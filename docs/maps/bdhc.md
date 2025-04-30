# BDHC

## Introduction

The BDHC subsystem is used to calculate the height of the terrain. It is used for
collision detection and enabling height in an otherwise 2D movement system. This
data is stored alongside individual maps.

> [!NOTE]
> Throughout this document, we consider that a 2D point is represented by a
> pair of coordinates $(x, z)$. This allows more understandable conversions
> between the 2D and 3D spaces.
>
> The game's coordinate system follows the right-hand rule, with the Y axis
> pointing upwards.

## Plates

The main building block of BDHC data is the plate. A plate is defined by the
following properties:

- a 2D top-left corner
- a 2D bottom-right corner
- a unit normal vector (a 3D vector, pointing up for flat, horizontal plates)
- a constant

For any 2D point contained within the bounds of the plate (i.e. for any point
that is between the rectangle formed by the top-left and bottom-right corners),
the height of this point (its third coordinate) can be calculated using the unit
normal vector and the constant.

Looking at the bigger picture, this allows the game engine to calculate the height
at which a map object is rendered.

It is common that all plates in a map cover the entirety of the map, but this
is not a requirement by the game engine. If the map object is not within the bounds
of any plate, collision detection and height calculation will behave erratically.

It is possible to have multiple plates covering the same area, but at different
heights. For instance, this can be done to create bridges that can also be walked
underneath (such as the ones found on Route 216). When a map object is within the
bounds of multiple plates, all possible heights are calculated and the one closest
to the current height of the object is chosen.

The animation below represents a plate, in blue, and its normal vector, in red, going
from a flat position to a tilted one, like those used to make stairs. The black
outline is the original position of the plate.

https://github.com/user-attachments/assets/39736bea-c0c9-4016-9d15-b8302f3263d0

The animation below represents a plate, in blue, and Dawn moving on it. The height
of Dawn is calculated as she is moving on the plate.

https://github.com/user-attachments/assets/10251494-9bd6-41d4-b2b7-866d5b784109

## Strips

Instead of having to check every plate in the map to find the ones that contain
a map object (some complex map can reach over 100 plates!), the game engine uses
strips to speed up the process.

Strips are basically a list of plates that are all intersecting a given Z coordinate.
This Z coordinate is stored in the strip, alongside its plates, and is called the
"scanline".

When the game engine needs to calculate the height of a map object, it first
finds the strip that contains the object on the Z axis. Then, it checks all the
individual plates in the strip to find the ones that contain the object.

Those strips are directly derived from the plates, and more precisely from their
top-left and bottom-right points. There exists a strip for every different Z
coordinate of those points, except for the minimum (topmost) Z coordinate.

Take for example two plates $P_1$ defined by two points $A_1$ and $B_1$, and
$P_2$ defined by two points $A_2$ and $B_2$:

$$
\begin{align*}
A_1 &= \begin{pmatrix}
-32\\
-32
\end{pmatrix} \qquad
&A_2 &= \begin{pmatrix}
0\\
-16
\end{pmatrix} \\
B_1 &= \begin{pmatrix}
0\\
16
\end{pmatrix} \qquad
&B_2 &= \begin{pmatrix}
32\\
32
\end{pmatrix}
\end{align*}
$$

There are 4 different Z coordinates in this example: -32, -16, 16 and 32. Leaving
out the minimum Z coordinate, we have 3 strips:

- Strip 1: $Z = -16$
    - Plate 1
    - Plate 2
- Strip 2: $Z = 16$
    - Plate 1
    - Plate 2
- Strip 3: $Z = 32$
    - Plate 2

The animation below represents a 2D top view of a map BDHC data. The red line
represents the scanline. Blue rectangles are plates, and purple rectangles are
plates crossed by the scanline.

https://github.com/user-attachments/assets/2a366611-0b33-4227-b53d-28b0d8e473cd

## Working with BDHC data

The following sections contain useful formulas to work with BDHC data.

They are mostly targeted at people who are interested in implementing BDHC
functionality in their own projects. For instance, a map editor or a game
engine.

### How to calculate the height of a point?

Let's define the following:

- $P$ the point for which we want to calculate the height
- $\hat{n}$ the unit normal vector of the plate (an input)
- $d$ the constant of the plate (an input)
- $P_y$ the height of the point $P$ (a result)

$$
P = \begin{pmatrix}
P_x\\
P_z
\end{pmatrix} \qquad
\hat{n} = \begin{pmatrix}
\hat{n}_x\\
\hat{n}_y\\
\hat{n}_z
\end{pmatrix}
$$

$P_y$ can be calculated using the following formula:

$$
P_y = -\frac{\hat{n}_x * P_x + \hat{n}_z * P_z + d}{\hat{n}_y}
$$

> [!WARNING]
> Make sure that the object is within the bounds of the plate before calculating
> its height.

### How to calculate the unit normal vector and constant of a plate?

Let's define the following:

- $A$ the top-left point of the plate (an input)
- $B$ the bottom-right point of the plate (an input)
- $C$ the top-right point of the plate (an intermediate value)
- $\overrightarrow{AB}$ the vector going from the top-left to the bottom-right
  point (an intermediate value)
- $\overrightarrow{AC}$ the vector going from the top-left to the bottom-left
  point (an intermediate value)
- $n$ the normal vector of the plate (an intermediate value)
- $\hat{n}$ the unit normal vector of the plate (a result)
- $d$ the constant of the plate (a result)

$$
A = \begin{pmatrix}
A_x\\
A_y\\
A_z
\end{pmatrix} \qquad
B = \begin{pmatrix}
B_x\\
B_y\\
B_z
\end{pmatrix} \qquad
C = \begin{pmatrix}
B_x\\
A_y\\
A_z
\end{pmatrix}
$$

> [!NOTE]
> Unlike the previous section, our points are now in 3D space.

We are basically trying to calculate the equation of the plane that goes through
the three points $A$, $B$ and $C$. This plane will be the plate.

Let's first calculate the vectors $\overrightarrow{AB}$ and $\overrightarrow{AC}$,
vectors that are contained in the plane:

$$
\begin{align*}
\overrightarrow{AB} = B - A &= \begin{pmatrix}
B_x - A_x\\
B_y - A_y\\
B_z - A_z
\end{pmatrix} \qquad
&\overrightarrow{AC} = C - A &= \begin{pmatrix}
B_x - A_x\\
A_y - A_y\\
A_z - A_z
\end{pmatrix} \\
\Leftrightarrow \quad \overrightarrow{AB} = B - A &= \begin{pmatrix}
AB_x\\
AB_y\\
AB_z
\end{pmatrix} \qquad
&\Leftrightarrow \quad \overrightarrow{AC} = C - A &= \begin{pmatrix}
AC_x\\
AC_y\\
AC_z
\end{pmatrix} \\
\end{align*}
$$

Then, we calculate the normal vector of the plane, which is the cross product of
$\overrightarrow{AB}$ and $\overrightarrow{AC}$:

$$
\begin{align*}
n &= \overrightarrow{AB} \times \overrightarrow{AC} \\
\Leftrightarrow \quad n &= \begin{pmatrix}
AB_y * AC_z - AB_z * AC_y\\
AB_z * AC_x - AB_x * AC_z\\
AB_x * AC_y - AB_y * AC_x
\end{pmatrix} \\
\Leftrightarrow \quad n &= \begin{pmatrix}
n_x\\
n_y\\
n_z
\end{pmatrix}
\end{align*}
$$

Now, we can normalize the normal vector $n$ to get the unit normal
vector $\hat{n}$ of the plate:

$$
\begin{align*}
\hat{n} &= \frac{1}{\|n\|} * n \\
\Leftrightarrow \quad \hat{n} &= \frac{1}{\sqrt{n_x^2 + n_y^2 + n_z^2}} * n \\
\Leftrightarrow \quad \hat{n} &= \begin{pmatrix}
\hat{n}_x\\
\hat{n}_y\\
\hat{n}_z
\end{pmatrix}
\end{align*}
$$

Finally, we can calculate the constant $d$ of the plate by using the top-left
point $A$ and the unit normal vector $\hat{n}$ (this is a transformed
equation of the plane):

$$
\begin{align*}
d &= -\hat{n} \cdot A \\
\Leftrightarrow \quad d &= -\hat{n}_x * A_x - \hat{n}_y * A_y - \hat{n}_z * A_z
\end{align*}
$$

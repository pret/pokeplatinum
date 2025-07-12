## 3D Rendering
The following is a brief overview and introduction to the 3D rendering system in Pokemon Platinum and how to use it.

## Abstraction Layers
The lowest level 3D is interacting directly with the hardware via NitroSDK. NitroSystem provides a slight abstraction over this with `G3D`.

The game has 2 additional layers of abstraction over this:
### 1 - Easy3D
The first layer of abstraction is the Easy3D System (`easy3d.h`). Which provides basic functionality for:
- Loading Models and Textures
- Binding textures to models
- Drawing models with any transform
- Setting up and releasing a 3D graphics state

To elaborate on the last point: Before using any 3D graphics, a "3D Graphics State" must be initialized. The struct for this is currently called `GenericPointerData`. The Easy3D system provides an easy method to set up a simple gfx state via `Easy3D_Init` (With `Easy3D_Shutdown` as its counterpart), which works for most scenarios.

### 2 - Easy3DObject
The second layer of abstraction is `Easy3DObject` (`easy3d_object.h`). This API provides a streamlined interface for:
- Loading models, textures, and animations
- Binding a texture to a model
- Binding one or more animations to a model (both bone animations and texture animations)
- Updating the objects transform (the object itself keeps track of that)
- Updating animation state
- Drawing objects
- Cleanup

One thing to keep in mind is that this system by itself does not establish a 3D GFX State.
This system is also not used everywhere. In a lot of places Easy3D is used directly instead of this object oriented interface.

## Example
The following is an example for using the `Easy3DObject` API for:
1. Loading a model with textures, animation, and texture animation
2. Binding them all together
3. Updating the animations
4. Drawing the model

I will be using the Giratina model from the title screen for this.

### Loading the data
The first thing needed is some static storage to hold our data:
```c
Easy3DObject giratinaObj;
Easy3DModel giratinaModel;
Easy3DAnim giratinaAnim; // Model Animation
Easy3DAnim giratinaTexAnim; // Texture Animation
NNSFndAllocator allocator; // Needed for Animations
```
Next we load all of the data:
```c
// Open the title NARC
NARC *narc = NARC_ctor(NARC_INDEX_DEMO__TITLE__TITLEDEMO, HEAP_ID_FIELD1);

// Load the model from the title screen NARC. Member index 1 is the model data.
// There is also Easy3DModel_Load which takes a NARC index and a member index.
Easy3DModel_LoadFrom(&giratinaModel, narc, 1, HEAP_ID_FIELD1);
Easy3DObject_Init(&giratinaObj, &giratinaModel);

// Initialize the Allocator used by the animations
HeapExp_FndInitAllocator(&allocator, HEAP_ID_FIELD1, 4);

// Load the model animation with member index 2.
Easy3DAnim_LoadFrom(&giratinaModelAnim, &giratinaModel, narc, 2, HEAP_ID_FIELD1, &allocator);
// Bind the animation to the object
Easy3DObject_AddAnim(&giratinaObj, &giratinaModelAnim);

// Do the same for the texture animation
Easy3DAnim_LoadFrom(&giratinaTexAnim, &giratinaModel, narc, 0, HEAP_ID_FIELD1, &allocator);
Easy3DObject_AddAnim(&giratinaObj, &giratinaTexAnim);

NARC_dtor(narc);
```
This is all that needs to be done in terms of setup, now the model is ready to draw (provided a 3D GFX State has been set up).

### Drawing the Model
Before drawing there's a few things that should be configured on the object, one of them being the position of the model obviously. For simplicity's sake I will just set the models position to the player's position.
```c
const VecFx32 *pos = PlayerAvatar_PosVector(fieldSystem->playerAvatar);
Easy3DObject_SetPosition(&giratinaObj, pos->x, pos->y, pos->z);

// Make sure the model actually gets rendered
Easy3DObject_SetVisibility(&giratinaObj, TRUE); 

// The model is pretty big so scale it to half its size
Easy3DObject_SetScale(&giratinaObj, FX32_CONST(0.5), FX32_CONST(0.5), FX32_CONST(0.5)); 
```
Now we can actually render the model:
```c
// Update the animations
// Here we advance the animation by one frame.
// There is also Easy3DAnim_Update which does not loop the animation
Easy3DAnim_UpdateLooped(&giratinaModelAnim, FX32_ONE);
Easy3DAnim_UpdateLooped(&giratinaTexAnim, FX32_ONE);

// Draw the model
Easy3DObject_Draw(&giratinaObj);
```
All of that results in the following:

https://github.com/pret/pokeplatinum/assets/60443001/ba162c62-e64a-4cd6-850f-414774f19bfd

Obviously the rotation and resizing is not outlined above. The code for this is the following:
```c
u16 angle = Easy3DObject_GetRotation(&giratinaObj, ROTATION_AXIS_Y);
angle = (angle + 100) % 0xFFFF;
Easy3DObject_SetRotation(&giratinaObj, angle, ROTATION_AXIS_Y);

// Resize using L and R
if (gSystem.heldKeys & PAD_BUTTON_R) {
    VecFx32 scale;
    Easy3DObject_GetScale(&giratinaObj, &scale.x, &scale.y, &scale.z);
    scale.x = FX_Mul(scale.x, FX32_CONST(1.01));
    scale.y = FX_Mul(scale.y, FX32_CONST(1.01));
    scale.z = FX_Mul(scale.z, FX32_CONST(1.01));
    Easy3DObject_SetScale(&giratinaObj, scale.x, scale.y, scale.z);
} else if (gSystem.heldKeys & PAD_BUTTON_L) {
    VecFx32 scale;
    Easy3DObject_GetScale(&giratinaObj, &scale.x, &scale.y, &scale.z);
    scale.x = FX_Mul(scale.x, FX32_CONST(0.99));
    scale.y = FX_Mul(scale.y, FX32_CONST(0.99));
    scale.z = FX_Mul(scale.z, FX32_CONST(0.99));
    Easy3DObject_SetScale(&giratinaObj, scale.x, scale.y, scale.z);
}
```

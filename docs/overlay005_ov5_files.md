# Overlay005 ov5_ Files Documentation

This document provides an overview of the `ov5_` files in the `src/overlay005/` directory, which contain various field system utilities and specialized functionality for the Pokémon Platinum decompilation project.

## File Categories and Functions

### System Management and Task Handling

#### `ov5_021D1A94.c` - Field System Task Manager
- **Purpose**: Manages system tasks for the field system
- **Key Functions**:
  - `ov5_021D1A94()` - Creates a new task manager for field system operations
  - `ov5_021D1AE4()` - Frees task manager and associated resources
  - `ov5_021D1B18()` - Executes pending tasks
  - `ov5_021D1B6C()` - Allocates and starts new tasks
  - `ov5_021D1BEC()` - Cleans up completed tasks
- **Usage**: Handles background tasks and animations in the field

#### `ov5_021D5BC0.c` - Bottom Screen Management
- **Purpose**: Manages different bottom screen modes in the field
- **Key Functions**:
  - `FieldSystem_InitBottomScreen()` - Initializes bottom screen based on current mode
  - `FieldSystem_IsBottomScreenRunningDummy()` - Checks if bottom screen is running
  - `FieldSystem_EndBottomScreen()` - Ends current bottom screen mode
  - `FieldSystem_IsBottomScreenDone()` - Checks if bottom screen operations are complete
- **Modes**: Handles different bottom screen states (normal, underground, colosseum, etc.)

### Graphics and Sprite Management

#### `ov5_021D2F14.c` - Sprite Resource Management
- **Purpose**: Manages sprite resources and rendering for field objects
- **Key Functions**:
  - `ov5_021D2F14()` - Initializes sprite resource system
  - `ov5_021D30A8()` - Cleans up sprite resources
  - `ov5_021D3104()` - Creates sprites from resource templates
  - `ov5_021D3190()` - Sets up sprite resource capacities
  - `ov5_021D3270()` - Configures sprite rendering parameters
- **Usage**: Handles sprite loading, rendering, and resource management for map objects

#### `ov5_021D5CB0.c` - Texture Resource Management
- **Purpose**: Manages texture resources for 3D models
- **Key Functions**:
  - `ov5_021D5CE4()` - Initializes texture resource system
  - `ov5_021D5D30()` - Loads texture data from NARC files
  - `ov5_021D5DEC()` - Frees texture resources
  - `ov5_021D5E5C()` - Sets texture parameters
- **Usage**: Handles 3D model texture loading and management

### Map Object and Animation System

#### `ov5_021D431C.c` - Door Animation System
- **Purpose**: Handles door opening/closing animations and interactions
- **Key Functions**:
  - `ov5_021D433C()` - Checks for door interactions
  - `ov5_021D453C()` - Handles door opening logic
  - `ov5_021D4858()` - Plays door opening animation
  - `ov5_021D4A24()` - Plays door closing animation
  - `DoorAnimation_FindDoorAndLoad()` - Finds and loads door animations
  - `DoorAnimation_PlayOpenAnimation()` - Plays door opening animation
  - `DoorAnimation_PlayCloseAnimation()` - Plays door closing animation
- **Usage**: Manages door interactions and animations throughout the game

#### `ov5_021EB1A0.c` - Map Object Animation Commands
- **Purpose**: Handles various map object animation commands
- **Key Functions**:
  - `ov5_021EB2EC()` - Animation command for map objects
  - `ov5_021EB314()` - Another animation command variant
  - `ov5_021EB328()` - Animation state management
  - `ov5_021EB354()` - Animation parameter setting
  - `ov5_021EB398()` - Animation execution
  - `ov5_021EB40C()` - Animation cleanup
- **Usage**: Controls animations for various map objects and NPCs

#### `ov5_021ECE40.c` - Map Object Rendering System
- **Purpose**: Manages rendering of map objects and sprites
- **Key Functions**:
  - `ov5_021ECE40()` - Initializes map object rendering
  - `ov5_021ECE94()` - Cleans up rendering resources
  - `ov5_021ECEB4()` - Creates render objects for map objects
  - `ov5_021ECF04()` - Alternative render object creation
  - `ov5_021ECF70()` - Updates render object properties
  - `ov5_021ECFA4()` - Renders map objects
  - `ov5_021ECFD8()` - Advanced rendering operations
- **Usage**: Handles the visual rendering of all map objects

### Player Movement and Field Actions

#### `ov5_021DFB54.c` - HM Move System (Surf, Rock Climb, Waterfall)
- **Purpose**: Handles HM move implementations for field movement
- **Key Functions**:
  - `ov5_021DFDE0()` - Main HM move execution
  - `ov5_021E097C()` - Field system HM integration
  - `ov5_021E0DD4()` - Field task for HM moves
  - `ov5_021E0E94()` - Player avatar HM state management
  - `ov5_021E0EEC()` - Player avatar movement updates
  - `ov5_021E100C()` - System task for HM operations
- **HM Moves**: Surf, Rock Climb, Waterfall, and other field movement abilities
- **Usage**: Implements the core HM move functionality for field exploration

### UI and Menu Systems

#### `ov5_021F6454.c` - Advanced Menu System
- **Purpose**: Handles complex menu systems and UI interactions
- **Key Functions**:
  - `ov5_021F6760()` - Menu system initialization
  - `ScrCmd_2DE()` - Script command for menu operations
  - `ov5_021F65D4()` - Menu state management
  - `ov5_021F70CC()` - Pokemon data handling in menus
  - `ScrCmd_300()` - Additional script command
- **Usage**: Manages complex menu systems, likely for Pokemon management or item selection

### Specialized Field Features

#### `ov5_021D57BC.c` - Field Effect System
- **Purpose**: Manages various field effects and visual enhancements
- **Key Functions**:
  - `ov5_021D57D8()` - Creates field effect structures
  - `ov5_021D57EC()` - Checks field effect state
  - `ov5_021D57F0()` - Gets field effect parameters
  - `ov5_021D57F4()` - Additional parameter retrieval
  - `ov5_021D57F8()` - Color/visual parameter access
  - `ov5_021D57FC()` - Sets field effect parameters
  - `ov5_021D5834()` - Color parameter setting
  - `ov5_021D585C()` - String parameter handling
- **Usage**: Manages visual effects and enhancements in the field

## Common Patterns

### Naming Convention
- `ov5_021D[XXXX].c` - Core system files (D1xxx-D5xxx range)
- `ov5_021E[XXXX].c` - Map object and animation files (E1xxx-E9xxx range)  
- `ov5_021F[XXXX].c` - UI and menu system files (F1xxx-F9xxx range)

### Function Naming
- `ov5_021D[XXXX]()` - Main functions (often creation/initialization)
- `ov5_021D[XXXX]_[Name]()` - Specific functionality functions
- Static functions use descriptive names like `DoorAnimation_GetSoundEffectType()`

### Memory Management
- Most functions follow the pattern of `New()` for creation, `Free()` for cleanup
- Heap allocation is commonly used with `Heap_Alloc()` and `Heap_Free()`
- Task management uses `SysTask_Start()` and `SysTask_Done()`

### Integration Points
- Most files integrate with `FieldSystem` for field operations
- Graphics files work with `MapObject` and `PlayerAvatar` systems
- Animation files coordinate with `MapPropAnimationManager`
- UI files integrate with `ScriptContext` for script commands

## Usage Guidelines

1. **Memory Management**: Always pair allocation with deallocation
2. **Task Management**: Use the task manager system for background operations
3. **Animation**: Coordinate with the animation system for smooth transitions
4. **Rendering**: Follow the established rendering pipeline for map objects
5. **Script Integration**: Use proper script command patterns for UI interactions

## Dependencies

- **Core Systems**: `field_system.h`, `heap.h`, `sys_task.h`
- **Graphics**: `sprite.h`, `graphics.h`, `camera.h`
- **Map Objects**: `map_object.h`, `player_avatar.h`
- **Animation**: `map_prop_animation.h`, `map_object_anim_cmd.h`
- **UI**: `script_manager.h`, `message.h`, `list_menu.h`

This documentation provides a foundation for understanding the ov5_ files and their roles in the Pokémon Platinum field system implementation.

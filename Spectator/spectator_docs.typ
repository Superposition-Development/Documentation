#import "/Spectator/include/sp_preamble.typ": *
#import "/Spectator/include/sp_utils.typ": *

#show: doc => default_style(doc)

#cover_page("Spectator", "Game design documentation")


#page()[#outline()]


= General Information

Spectator is a first person shooter horror game set in a post-apocalyptic scenario where the main character has lost almost all vision, relying on a camera system accessed with a visor connected to the location's internal security network. The player will need to manage their resources and give up ammo reserves to momentarily see and hit their shots.

= Engine technical details

The game engine in use is the latest version of Godot (4.4 now, 4.5 soon), having supported export targets for Windows and Linux, with an unsupported and experimental Mac version.

Since the game is still early in development, we can't specify many things such as culling methods or lighting, but, ideal targets are the following:

- Milliseconds per frame: 8;
- RAM usage: 4gb;
- VRAM usage: 4gb.

= Map generation

The map is generated using a queue system and prefabs

= Room Guidelines
Rooms can be filled with anything, but as a map component they should meet this criteria:\
Create a Node3D child of the room node named "doorCollection", \
Place a node as a "wrapper" inside of this object, this will hold the door and align marker \
The wrapper may not be rotated by any means, the children can. \
This node will contain a door mesh, and a Marker3D named "align" \
Orient the Marker3D as such that the bright blue line (negative Z) points out of the room, as if pointing to where the next room will generate.



= Game mechanics

== Blindness

// Todo: Add forward references
The main character is almost completely blind, refer to how this effect looks like in the Graphics section. Whenever the player shoots, the muzzle flash of the weapon lights up the room for a split second and allows the player to reoirent themselves based on that and a fading afterimage.

To see, the character may use a "VR" headset, but gaining this visual advantage makes the player completely defenseless (tradeoff between information and combat ability).

== Weapons

Most single projectile weapons will do medium to moderate damage and aren't really separated by "class". Pistols and lower caliber weapons deal lesser damage but, in turn, deal less recoil and can be fired more frequently. Assault rifles and submachine guns provide a stream of gunfire, lighting up the room consistently but deal medium recoil while firing. Shotguns deal the most damage -- due to multiple low damage pellets -- but don't light up the room as much, but their usage may have different quirks, such as double barrel shotguns being able to fire both barrels simultaneously, dealing a devastating amount of damage.

== Items

TODO: Write

== Enemies

TODO: Write


= Art

The game's setting is heavily inspired by several sources, such as SCP: Containment Breach, S.P.L.I.T, Cyberpunk, etc. The tools used in the project are:

- Blender - 3D modelling, video editing;
- Blenders - Managing blender versions and projects;
- Material Maker - Prototyping and making 3D materials;
- ucupaint - Painting textures in blender
- Photoshop/Photopea/GIMP - Creating textures, images, and decals
- Music - Reaper

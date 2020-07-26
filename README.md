# Eeveelution-Assets
# Description
Here you'll find some Godot assets for your Eeveelution fan games!
Most of the art comes from the Pokémon Mystery Dungeon series. I did not make the art contained within these files, merely distilled it into a Godot usable format for Pokémon fans to use and expand the Pokémon universe.

# How to use (general)
Take any one of the folders inside Eeveelution-Assets, then drag and drop the folder inside your Godot project (the same folder with the "project.godot" file, it won't work otherwise). Afterwards, open up the project in Godot and it'll automatically import all the assets!

# How to use (eeveelution_sprites)
The sprite's initial animation can be set via its script variables that are visible in the inspector tab.

Each sprite comes with three functions:

change_direction(enum): Uses a predefined enum to change direction. E.g "change_direction(EeveeDir.RIGHT)" Enum variables are: EeveeDir.RIGHT, EeveeDir.DOWN_RIGHT, EeveeDir.DOWN, EeveeDir.DOWN_LEFT, EeveeDir.LEFT, EeveeDir.UP_LEFT, EeveeDir.UP, EeveeDir.UP_RIGHT.

change_anim_type(enum): Uses a predefined enum to change the animation type. E.g "change_anim_type(EeveeAnim.IDLE)" Enum variables are: EeveeAnim.IDLE, EeveeAnim.MOVE, EeveeAnim.ATTACK, EeveeAnim.HURT.

change_direction_vector(Vector2): Uses a Vector2 object to change direction. E.g "change_direction_vector(Vector2(1, 0))".

# How to use (eeveelution_effects)
Any sprite with an animation will automatically start when the sprite is shown (its "visible" parameter is set to true).

A sprite with a non-looping animation will automatically hide itself once the animation finishes.

# Shoutouts
Shoutout to these amazing people who help expand the world of Pokémon fan games!

James Yevon (https://www.youtube.com/channel/UCcKtF2aqJHIs9d4Ay4BUp8A)

redblueyellow (https://www.spriters-resource.com/submitter/redblueyellow/)

KillerAslox (https://www.spriters-resource.com/submitter/KillerAslox/)

/obj/item/projectile/bullet/magnetic
	icon_state = "magjectile"
	damage = 35
	armour_penetration = 0.4
	light_range = 3
	pixels_per_second = TILES_TO_PIXELS(16.667)
	range = 35
	light_color = LIGHT_COLOR_RED

/obj/item/projectile/bullet/magnetic/disabler
	icon_state = "magjectile-nl" //nl stands for non-lethal
	damage = 2
	armour_penetration = 0.2
	stamina = 30
	light_color = LIGHT_COLOR_BLUE

/obj/item/projectile/bullet/magnetic/weak
	damage = 15
	armour_penetration = 0.2
	light_range = 2
	range = 25

/obj/item/projectile/bullet/magnetic/weak/disabler
	damage = 2
	stamina = 20

/obj/item/projectile/bullet/magnetic/hyper
	damage = 10
	armour_penetration = 0.2
	stamina = 10
	movement_type = FLYING | PHASING
	range = 6
	light_range = 1
	light_color = LIGHT_COLOR_RED

/obj/item/projectile/bullet/incendiary/mag_inferno
	icon_state = "magjectile-large"
	damage = 10
	armour_penetration = 0.2
	movement_type = FLYING | PHASING
	range = 20
	pixels_per_second = TILES_TO_PIXELS(12.5)
	light_range = 4
	light_color = LIGHT_COLOR_RED

/obj/item/projectile/bullet/incendiary/mag_inferno/on_hit(atom/target, blocked = FALSE)
	..()
	explosion(target, -1, 0, 0, 1, 2, flame_range = 2)
	return BULLET_ACT_HIT

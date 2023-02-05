
clear @s totem_of_undying
item replace entity @s weapon.offhand with totem_of_undying{display:{Name:'{"text":"Totem of spawn protection","color":"yellow","italic":false}'},HideFlags:2,Tags:["gg.antiknockback"],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:999999,Operation:0,UUID:[I;445293696,-1691859546,-1446166489,-1599496353]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-99999,Operation:0,UUID:[I;-1261936198,334840775,-1191970834,-20158802]}]} 1
effect give @s resistance 5 250 true

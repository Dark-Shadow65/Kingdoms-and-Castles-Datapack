$give @s $(type)[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:entity_interaction_range",slots:"mainhand", id:"reach", amount:$(reach), operation:"add_value"},{type:"attack_speed",slots:"mainhand", id:"two_handed_attack_speed_bonus", amount:0, operation:"add_value"},{type:"attack_damage",slot:"mainhand", id:"attack_damage", amount:$(damage), operation:"add_value"},{type:"attack_speed",id:"base_attack_speed",amount:$(attack_speed_debuff),operation:"add_value",slot:"mainhand"},{type:"minecraft:block_break_speed",id:"set_base_speed",amount:0.2,operation:"add_value",slot:"mainhand"}],show_in_tooltip:0b},minecraft:max_damage=$(durability),custom_data={"bonus_applied":true,"sharpness":0,"sharpness_max":$(sharpness),"sharpness_bonus":$(sharpness_bonus),"damage_bonus":$(damage_bonus),"durability_bonus":$(durability_bonus),"efficiency_bonus":$(efficiency_bonus),"can_parry_in_offhand":$(can_parry_in_offhand),"parry_break_scalar":$(parry_break_scalar),"two_handed_attack_speed_bonus":$(two_handed_attack_speed_bonus),"author":0,"efficient_on":$(efficient_on)},minecraft:tool={rules:[{blocks:$(efficient_on),correct_for_drops:true,speed:$(efficiency)}],damage_per_block:1},minecraft:enchantments={levels:$(enchantments),show_in_tooltip:0b},minecraft:enchantment_glint_override=0b,minecraft:hide_additional_tooltip={},minecraft:lore=["[{\"text\":\"Unsharpend\",\"color\":\"red\",\"italic\":false}]"],minecraft:rarity="common"]
-----------------------------------
-- Vaccine - Removes Plague.
-----------------------------------
require("scripts/settings/main")
require("scripts/globals/status")
require("scripts/globals/mobskills")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    if target:hasStatusEffect(xi.effect.PLAGUE) then
        target:delStatusEffect(xi.effect.PLAGUE)
    end
    return 0
end

return mobskill_object
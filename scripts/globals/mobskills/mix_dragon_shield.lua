-----------------------------------
-- Mix: Dragon Shield - Applies Magic Defense Bonus to all party members for 60 seconds.
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
    if not target:hasStatusEffect(xi.effect.MAGIC_DEF_BOOST) then
        target:addStatusEffect(xi.effect.MAGIC_DEF_BOOST, 10, 0, 60)
    end
    return 0
end

return mobskill_object
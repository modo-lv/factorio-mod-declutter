local declutter = {}

function declutter.process(techList, recipeList)
  function setting(target, setting)
    if setting ~= "" then
      for name in string.gmatch(setting, "[%w-_]+") do
        table.insert(target, name)
      end
    end
  end

  setting(techList, settings.startup["declutter-hide-techs"].value)
  setting(recipeList, settings.startup["declutter-hide-recipes"].value)
end

return declutter
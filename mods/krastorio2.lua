local k2 = {}

function k2.process(techs, recipes)
	local tNames = {
		"kr-containers",
		"kr-logistic-containers-1",
		"kr-logistic-containers-2",
	}
	local rNames = {
		"kr-big-container",
		"kr-big-active-provider-container",
		"kr-big-buffer-container",
		"kr-big-passive-provider-container",
		"kr-big-requester-container",
		"kr-big-storage-container",
		"kr-medium-container",
		"kr-medium-active-provider-container",
		"kr-medium-buffer-container",
		"kr-medium-passive-provider-container",
		"kr-medium-requester-container",
		"kr-medium-storage-container"
	}

	for _, name in ipairs(tNames) do
		table.insert(techs, name)
	end
	for _, name in ipairs(rNames) do
		table.insert(recipes, name)
	end
end

return k2
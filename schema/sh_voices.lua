
Schema.voices.AddClass("Combine", function(client)
	return client:IsCombine()
end)

Schema.voices.AddClass("Dispatch", function(client)
	return client:IsDispatch()
end)

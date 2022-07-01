if ModIsEnabled( "mould_n" ) then
	ModMagicNumbersFileAdd( "mods/mould_asmallworld/files/magic_numbers.xml" ) 

	local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
	
	local content = ModTextFileGetContent("data/biome/_biomes_all.xml")
	local xml = nxml.parse(content)
	xml:add_children(nxml.parse_many[[
		
	]])
	ModTextFileSetContent("data/biome/_biomes_all.xml", tostring(xml))
	
	
	
	function OnModInit()
		print("Mod - OnModInit()")
	end
	
	function OnModPostInit()
		print("Mod - OnModPostInit()")
	end
	
	function OnPlayerSpawned( player_entity )
	
	end
	
	function OnWorldPostUpdate()
	
	end
	
	function OnPlayerDied()
		print("dead")
	end
	
	function Moulding()
	
	end
	
	GamePrint("A Small World")
else
	GamePrint("Mould is required for A Small World!")
end


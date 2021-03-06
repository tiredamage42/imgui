project "ImGui"
	kind "SharedLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    defines
    {
        "IMGUI_BUILD_DLL"
    }
    includedirs
    {
        "include",
    }

	files
	{
        "include/**.h",
        "src/**.cpp",

		-- "imconfig.h",
		-- "imgui.h",
		-- "imgui.cpp",
		-- "imgui_draw.cpp",
		-- "imgui_internal.h",
		-- "imgui_widgets.cpp",
		-- "imstb_rectpack.h",
		-- "imstb_textedit.h",
		-- "imstb_truetype.h",
		-- "imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

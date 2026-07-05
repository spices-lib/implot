solution.DefineCStaticLibrary("ImPlot", function()

	files
	{
		"implot.cpp",
		"implot.h",
		"implot_demo.cpp",
		"implot_internal.h",
		"implot_items.cpp",
	}

	includedirs
	{
		"%{vendor.includes.ImGui}",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++20"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

end)
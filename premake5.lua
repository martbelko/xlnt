project "xlnt"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	files
	{
		"source/**.h",
		"source/**.cpp"
	}

	includedirs
	{
		"include",
		"source",
		"third-party/libstudxml",
		"third-party/miniz",
		"third-party/utfcpp"
	}

	defines
	{
		"WIN32",
		"_WINDOWS",
		"XLNT_STATIC=1",
		"_CRT_SECURE_NO_WARNINGS=1"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"
		inlining "Auto"
		flags
		{
			"LinkTimeOptimization"
		}

	filter {}

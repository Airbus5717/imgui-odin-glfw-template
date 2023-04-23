package main

import "core:log"
import "core:runtime"
import "core:strings"

import imgui "../libs/odin-imgui"
import imgl "../libs/odin-imgui/impl/opengl"
import imglfw "../libs/odin-imgui/impl/glfw"

import gl "vendor:OpenGL"
import glfw "vendor:glfw"


main_window :: proc() {
	// make the sub window take full window size
	viewport := imgui.get_main_viewport()
	imgui.set_next_window_pos(viewport.work_pos)
	imgui.set_next_window_size(viewport.work_size)

	imgui.begin("main")

	defer imgui.end()

	imgui.text("NORMAL TEXT: {}", 1)
	imgui.text_colored(imgui.Vec4{1, 0, 0, 1}, "COLORED TEXT: {}", 2)
	imgui.text_disabled("DISABLED TEXT: {}", 3)
	imgui.text_unformatted("UNFORMATTED TEXT")
	imgui.text_wrapped("WRAPPED TEXT: {}", 4)
}

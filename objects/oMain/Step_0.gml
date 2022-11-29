/// @description 

// for browser build
// check if display is larger than the window
if (display_get_width() != window_get_width()) {
    // resize window to display
    window_set_size(display_get_width(),display_get_height());
	display_set_gui_size(480, 270);
}




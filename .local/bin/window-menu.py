#!/bin/python3

from i3ipc import Connection
import subprocess

# Get the connection
sway_connection = Connection()

# Switch window based on ID
def windows_list():
    windows = sway_connection.get_tree().leaves() + sway_connection.get_tree().scratchpad().descendants()
    focused = sway_connection.get_tree().find_focused()

    window_information = [(focused.id, window.id, window.workspace().num, window.name) for window in windows]
    window_string = '\n'.join(f'{" " if id == focus else " "}[{id}] [{num}] {name}' for focus, id, num, name in window_information)

    # Select window with menu
    menu_process = subprocess.Popen(['fuzzel', '-d', '-w 75'], stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    selected_window, _ = menu_process.communicate(input=window_string.encode())
    selected_window = selected_window.decode().strip()

    # Focus the chosen window
    for _, id, _, _ in window_information:
        if str(id) in selected_window:
            sway_connection.command('[con_id="%s"] focus' % id)

windows_list()

#!/bin/python3

from i3ipc import Connection
import subprocess
import re

sway_connection = Connection()


# Get every informations about windows
def get_node_information():
    tree = sway_connection.get_tree().descendants()
    focused = sway_connection.get_tree().find_focused()
    node_information = []

    # Check every nodes
    for node in tree:

        # Only get values from windows
        if node.type == 'con' or node.type == 'floating_con':

            # Variables
            node_id = node.id
            node_num = node.workspace().num
            node_name = node.name
            focus_id = focused.id

            # Check wich node is the focused one
            if node_id == focus_id:
                focus_char = " "
            else:
                focus_char = " "

            # Remove parents from the tuple and create strings
            if node_name is not None:
                node_information.append(f'{focus_char} [{node_id}] [{node_num}] {node_name}')

    return node_information


# Select a value using a menu
def menu_choice():
    node_information = '\n'.join(get_node_information())

    # Default menu
    menu_process = subprocess.Popen(
        ['fuzzel', '-d', '-w 75'], stdin=subprocess.PIPE, stdout=subprocess.PIPE)

    # Select a node with the menu
    selected_node, _ = menu_process.communicate(
        input=node_information.encode())
    selected_node = selected_node.decode().strip()

    return selected_node


# Focus the chosen window
def switch_node():
    selected_node = menu_choice()

    # Get the value between the first two brackets
    match = re.search(r'\[(.*?)\]', selected_node)

    # Check if something have been matched
    if match:
        selected_id = match.group(1)
        sway_connection.command('[con_id="%s"] focus' % selected_id)
    else:
        pass


# Execute the program
switch_node()

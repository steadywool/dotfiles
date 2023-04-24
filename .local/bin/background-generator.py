#!/bin/python3

from os import listdir, environ
from random import choice
from pathlib import Path
from shutil import copyfile
from PIL import Image, ImageFilter
from asyncio import create_task, run


# Get a random background
async def get_random():
    files = listdir(background_dir)
    random_file = choice(files)
    return random_file


# Automatically create directories if they don't exists
async def create_directories():
    Path(background_dir).mkdir(parents=True, exist_ok=True)
    Path(used_background_dir).mkdir(parents=True, exist_ok=True)


# Copy the random background
async def set_clear_background():
    background_source = background_dir + '/' + selected_background
    background_destination = used_background_dir + '/' + 'wallpaper'

    copyfile(background_source, background_destination)


# Blur the random background
async def set_blur_background():
    background_source = background_dir + '/' + selected_background
    background_destination = used_background_dir + '/' + 'blurred_wallpaper'

    image = Image.open(background_source)
    blurred_image = image.filter(ImageFilter.GaussianBlur(radius=20))
    blurred_image.save(background_destination, format='PNG')


async def main():
    global background_dir, used_background_dir, selected_background
    background_dir = environ['HOME'] + '/Pictures/Backgrounds'
    used_background_dir = environ['HOME'] + '/.local/share/backgrounds'
    selected_background = await get_random()

    # Create directories if needed
    await create_directories()

    # Create two separate tasks for set_blur_background and set_clear_background
    copy_task = create_task(set_clear_background())
    blur_task = create_task(set_blur_background())

    # Await both tasks independently
    await copy_task
    await blur_task


if __name__ == "__main__":
    run(main())

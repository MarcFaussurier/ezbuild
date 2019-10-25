#!/usr/bin/env bash
function update()
{
    git submodule update --init --recursive
    git pull --recurse-submodules
}

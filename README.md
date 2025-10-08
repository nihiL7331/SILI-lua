# 🧠 SILI — Simple Isometric Lighting Implementation

*(a.k.a. SILLY)*

A lightweight and easy-to-use **isometric lighting system** for **LÖVE2D** written in **Lua**.
SILI provides a simple way to add dynamic lighting to isometric 2D scenes without complex shaders or external dependencies.

---

## ✨ Features

* 🕹️ **LÖVE2D-based** — built entirely with the Love framework.
* 💡 **Dynamic lighting** — supports multiple lights with customizable radius, intensity, and color.
* 🧱 **Tile-based shadows** — works seamlessly with isometric tilemaps.
* ⚡ **Light falloff simulation** — smooth blending for more natural lighting.
* 🪶 **Lightweight** — minimal overhead, easy to integrate into existing projects.

---

## 🚀 Getting Started

### Requirements

* [LÖVE2D](https://love2d.org/) 11.0 or higher
* Lua 5.1+

### Installation

Clone or download this repository, then include the SILI files in your Love2D project folder.

```bash
git clone https://github.com/nihiL7331/SILI-lua.git
```

Then require it in your main file:

```lua
local SILI = require("SILI")
```

---

## 🧩 Basic Usage

```lua
-- Initialize lighting system
local lightSystem = SILI.new()

-- Create a light
local torch = lightSystem:addLight(200, 150, 120, {1.0, 0.8, 0.6})

-- In your update loop
function love.update(dt)
    lightSystem:update(dt)
end

-- In your draw loop
function love.draw()
    -- Draw your scene first
    drawIsometricTiles()
    -- Then apply lighting
    lightSystem:draw()
end
```

---

## ⚙️ API Overview

| Function                                    | Description                                        |
| ------------------------------------------- | -------------------------------------------------- |
| `SILI.new()`                                | Creates a new lighting system instance.            |
| `lightSystem:addLight(x, y, radius, color)` | Adds a new light source.                           |
| `lightSystem:removeLight(light)`            | Removes a light source.                            |
| `lightSystem:update(dt)`                    | Updates light animations or transitions.           |
| `lightSystem:draw()`                        | Renders lighting and shadows on top of your scene. |

---

## 🧪 Example

An example scene is included in the `/examples` folder.
Run it directly with LÖVE.

---

## 🧰 Roadmap

* WIP

---

**Made with ❤️ using [LÖVE](https://love2d.org/)**

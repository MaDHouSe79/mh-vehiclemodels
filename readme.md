<p align="center">
    <img width="140" src="https://icons.iconarchive.com/icons/iconarchive/red-orb-alphabet/128/Letter-M-icon.png" />  
    <h1 align="center">Hi 👋, I'm MaDHouSe</h1>
    <h3 align="center">A passionate allround developer </h3>    
</p>

<p align="center">
  <a href="https://github.com/MaDHouSe79/mh-parking/issues">
    <img src="https://img.shields.io/github/issues/MaDHouSe79/mh-parking"/> 
  </a>
  <a href="https://github.com/MaDHouSe79/mh-parking/watchers">
    <img src="https://img.shields.io/github/watchers/MaDHouSe79/mh-parking"/> 
  </a> 
  <a href="https://github.com/MaDHouSe79/mh-parking/network/members">
    <img src="https://img.shields.io/github/forks/MaDHouSe79/mh-parking"/> 
  </a>  
  <a href="https://github.com/MaDHouSe79/mh-parking/stargazers">
    <img src="https://img.shields.io/github/stars/MaDHouSe79/mh-parking?color=white"/> 
  </a>
  <a href="https://github.com/MaDHouSe79/mh-parking/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/MaDHouSe79/mh-parking?color=black"/> 
  </a>      
</p>

<p align="center">
  <img alig src="https://github-profile-trophy.vercel.app/?username=MaDHouSe79&margin-w=15&column=6" />
</p>

## 🙈 Youtube
- [Youtube](https://www.youtube.com/@MaDHouSe79) for videos

# MH Model Names (Standalone)
- This give you the real model name for a vehicle,
- sometimes a vehicle does not give you the correct spawn name,
- with this you get the correct spawn name.
- you can use this to save in to a database.

# Install
- make sure you start this resources before qc-core or esx

# Example `GetModelName` function
-- Use this if a spawnname does nog match with the one you want.
-- with this you replace the name to the correct spawnname.
```lua
local model = exports['mh-modelnames']:GetModelName(vehicle)
print(model)
```


# Example To Get an offset of a vehicle
- function `GetVehicleOffsetX`
- function `GetVehicleOffsetY`
- function `GetVehicleOffsetZ`
```lua
local offsetX = exports['mh-modelnames']:GetVehicleOffsetX(vehicle)
local offsetY = exports['mh-modelnames']:GetVehicleOffsetY(vehicle)
local offsetZ = exports['mh-modelnames']:GetVehicleOffsetZ(vehicle)
print(offsetX, offsetY, offsetZ)
```
# ----------------------------------------------------------------------


# Example `GetVehicleOffset` function
```lua
local offsetX, offsetY, offsetZ = exports['mh-modelnames']:GetVehicleOffset(vehicle)
print(offsetX, offsetY, offsetZ)
```
# ----------------------------------------------------------------------

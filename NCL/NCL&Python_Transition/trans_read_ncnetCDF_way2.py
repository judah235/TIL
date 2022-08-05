from netCDF4 import Dataset

fname="../data/rectilinear_grid_3D.nc"
f=Dataset(fname)

dims=f.dimensions.values()
print(dims)

dimnames=f.dimensions.keys()
print(dimnames)

varnames = f.variables.keys()
print(varnames)

ver_list=[i for i in varnames if i not in dimnames]
print(ver_list)

var=f.variables["t"]
print(var)

type=var.dtype
shape=var.shape
dims=var.dimensions
print(f"Type: {type}")
print(f"Shape: {shape}")
print(f"dims: {dims}")



lat = f.variables["lat"]
lon=f.variables["lon"]
print(lat)
print(lon)

if hasattr(lon,'units'):
    print(f"Has units attribute: {lon.units}")


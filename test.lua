      bitboxrh = hookfunction(bit32.bxor, LPH_NO_VIRTUALIZE(function(self, ...) 
        local cs = getcallingscript()
        if not checkcaller() and not string.find(cs.Name, "GunScript_Local")  then
            return task.wait(9e9)
        end;
        return bitboxrh(self, ...);
    end))

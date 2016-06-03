function [times,dists_miles]=light_speed(dists_km)
    times=(1000*dists_km/3e8)/60
    dists_miles=dists_km/1.609
end

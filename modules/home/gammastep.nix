{ ... }:
{
services.gammastep = {
  enable = true;
  provider = "manual";
  
  # Dummy coordinates are required by NixOS when provider is "manual",
  # but they will be ignored because we are setting strict times below.
  latitude = 0.0;
  longitude = 0.0;

  temperature = {
    day = 6500;   # 6500K is standard, unfiltered screen temperature
    night = 3500; # 3500K is a warm, soothing amber for nighttime
  };

  # Gammastep uses time ranges to smoothly fade the screen so it doesn't jolt your eyes.
  # Dusk: Starts fading at 8:30 PM (20:30) and reaches maximum warmth by 9:00 PM (21:00)
  duskTime = "20:30-21:00";
  
  # Dawn: Starts fading back to normal at 5:00 AM (05:00) and finishes by 5:30 AM (05:30)
  dawnTime = "05:00-05:30";
};
}

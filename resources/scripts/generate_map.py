# generate_map.py
import folium
import sys
import json
import os

def generate_ping_map(ip_address, ping_data):
    # Ensure the maps directory exists
    os.makedirs('./maps', exist_ok=True)
    map_filename = f'./maps/{ip_address}_geo_ping_map.html'

    # Extract target IP's latitude and longitude from the first entry in ping_data
    target_latlon = ping_data[0].get("latlon", "").split(",")
    if len(target_latlon) != 2:
        print("Error: Invalid target latitude/longitude in ping data.")
        sys.exit(1)
    target_lat, target_lon = float(target_latlon[0]), float(target_latlon[1])

    # Create a map centered on the target IP location
    satellite_map = folium.Map(location=[target_lat, target_lon], zoom_start=3)

    # Add a primary marker for the IP address being pinged
    folium.Marker(
        [target_lat, target_lon],
        tooltip=f"Target IP: {ip_address}",
        icon=folium.Icon(color="blue", icon="info-sign")
    ).add_to(satellite_map)

    # Loop through ping data to add markers for each source location
    for entry in ping_data:
        from_loc = entry.get("from_loc", {})
        latlon = from_loc.get("latlon", "").split(",")
        
        # Ensure that latlon has both latitude and longitude
        if len(latlon) == 2:
            latitude, longitude = float(latlon[0]), float(latlon[1])
            city = from_loc.get("city", "Unknown City")
            country = from_loc.get("country", "Unknown Country")

            # Add marker for each ping source location
            folium.Marker(
                [latitude, longitude],
                tooltip=f"Ping From: {city}, {country}",
                icon=folium.Icon(color="red", icon="cloud")
            ).add_to(satellite_map)

    # Save the map as an HTML file
    satellite_map.save(map_filename)
    print(f"Ping map saved as {map_filename}")

if __name__ == "__main__":
    # Read command-line arguments
    if len(sys.argv) < 3:
        print("Usage: python generate_map.py <ip_address> <ping_data>")
        sys.exit(1)

    # Parse command-line arguments
    ip_address = sys.argv[1]
    ping_data = json.loads(sys.argv[2])  # Expecting JSON data for ping

    # Generate the map with ping locations
    generate_ping_map(ip_address, ping_data)

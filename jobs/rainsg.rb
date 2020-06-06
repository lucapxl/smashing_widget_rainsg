
# hour difference for timezones
timezone = 8

def get_url_and_date(time)
    timeobj = DateTime.strptime(time.to_s,'%s')
	datetime=timeobj.strftime('%Y%m%d%H%M')	
	datetimetext=timeobj.strftime("%H:%M")	
    image="url('https://www.weather.gov.sg/files/rainarea/50km/v2/dpsri_70km_"+datetime+"0000dBR.dpsri.png')"
    return image, datetimetext
end

SCHEDULER.every "120s", first_in: 0 do |job|
    datetimetext = []
    images = []
    time =  DateTime.now.to_time.to_i
    # rounding to last 5 minutes
    time = ((time / 300) * 300).to_i
    # adjusting date to timezone
    time = time + (timezone * 60  * 60)
    # the last images are probably some minutes ago, let's get the last 10-15 minutes ago
    time = time - 600

    # let's got back to the beginning and come back form there
    time = time-1800
    for index in 0..9 do
        images[index], datetimetext[index] = get_url_and_date(time)
        if index < 7
            time = time + 300
        end
    end

    send_event('rainsg', images: images, datetimetext: datetimetext)
end
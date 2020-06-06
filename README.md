# Singapore Rain Radar -  Widget for [Smashing](https://smashing.github.io)

[Smashing](https://smashing.github.io) widget that displays an animated radar of the current rain areas in Singapore.

## Example
TODO

## Installation and Configuration

Create a ```rainsg``` folder in your ```widgets``` directory and clone this repository inside it. 
make a symbolic link of the file ```jobs/rainsg.rb``` in the ```/jobs``` directory of your dashboard.
for example, if your smashing installation directory is in ```/opt/dashboard/``` you would run this:
```Shell
$ ln -s /opt/dashboard/widgets/rainsg/jobs/rainsg.rb /opt/dashboard/jobs/rainsg.rb
```

do the same for the ```assets/images/singapore-dark.png``` image to the ```/assets/images/```
```Shell
$ ln -s /opt/dashboard/widgets/rainsg/assets/images/singapore-dark.png /opt/dashboard/assets/images/singapore-dark.png
```

don't forget to it in your dashboard file

```html
    <li data-row="1" data-col="2" data-sizex="2" data-sizey="1">
      <div data-id="rainsg" data-view="Rainsg"></div>
    </li> 
```

## License
Distributed under the MIT license
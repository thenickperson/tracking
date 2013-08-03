#Tracking
[![Gem Version](https://badge.fury.io/rb/tracking.png)](http://badge.fury.io/rb/tracking)
[![Build Status](https://secure.travis-ci.org/thenickperson/tracking.png?branch=master)](http://travis-ci.org/thenickperson/tracking)
[![Dependency Status](https://gemnasium.com/thenickperson/tracking.png)](https://gemnasium.com/thenickperson/tracking)
[![Code Climate](https://codeclimate.com/github/thenickperson/tracking.png)](https://codeclimate.com/github/thenickperson/tracking)

A simple and configurable command line time tracker.

##Installation
Add this line to your application's Gemfile:

    gem 'tracking'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tracking

If you're on Windows, you should set up
[Ruby Installer](http://rubyinstaller.org/downloads/) and
[DevKit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit) first.

Tracking does not officially support versions of Ruby before 1.9.3. Please make
sure your version of Ruby is up to date.

##Features
- concise and configurable display
- simple syntax
- portable data

##Ideas (future)
- hashtag-like tags for organizing tasks
- different ways to view your data

##Tutorial
```
$ tracking essay for English class
+-------+------------------------------------------+----------+
| start |                   task                   | elapsed  |
+-------+------------------------------------------+----------+
| 12:00 | essay for English class                  | 00:00:00 |
+-------+------------------------------------------+----------+
$ tracking getting distracted on Reddit
+-------+------------------------------------------+----------+
| start |                   task                   | elapsed  |
+-------+------------------------------------------+----------+
| 12:00 | essay for English class                  | 00:00:20 |
| 12:20 | getting distracted on Reddit             | 00:00:00 |
+-------+------------------------------------------+----------+
$ tracking
+-------+------------------------------------------+----------+
| start |                   task                   | elapsed  |
+-------+------------------------------------------+----------+
| 12:00 | essay for English class                  | 00:00:20 |
| 12:20 | getting distracted on Reddit             | 00:00:05 |
+-------+------------------------------------------+----------+
$ tracking back to work
+-------+------------------------------------------+----------+
| start |                   task                   | elapsed  |
+-------+------------------------------------------+----------+
| 12:00 | essay for English class                  | 00:00:20 |
| 12:20 | getting distracted on Reddit             | 00:00:10 |
| 12:30 | back to work                             | 00:00:00 |
+-------+------------------------------------------+----------+
```

##Usage
```
Usage: tracking [mode]
                                     display tasks
    <task description>               start a new task with the given text (spaces allowed)
    -r, --rename                     rename the last task
    -d, --delete                     delete the last task
    -c, --clear                      delete all tasks
    -h, --help                       display this help information
```

##Configuration
The config file for tracking is located in `~/.tracking/config.yml`.

The default settings are listed below, along with a description of each setting.
```ruby
# path to the data file (string, ~ can be used)
:data_file: ~/.tracking/data.csv
# number of lines to be displayed at once by default (integer)
:lines: 10
# width of the task name column, in characters (integer)
:task_width: 40
# format to use for elapsed time display (:colons or :letters)
:elapsed_format: :colons
# toggle colored display of the current (last) task
:color_current_task: true
# toggle header describing tracking's display columns (true or false)
:show_header: true
# toggle display of seconds in elapsed time (true of false)
:show_elapsed_seconds: false
```

##Elapsed Time Formats
Elapsed times are displayed in this order: days, hours, minutes, seconds (if
enabled)
- hide elapsed seconds
  - colons: `01:02:03` (default)
  - letters: `01d 02h 03m`
- show elapsed seconds
  - colons: `01:02:03:04`
  - letters: `01d 02h 03m 04s`

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

##Similar Projects
- [timetrap](https://github.com/samg/timetrap)
- [d-time-tracker](https://github.com/DanielVF/d-time-tracker)
- [to-do](http://github.com/kristenmills/to-do) if you want a good command line
todo manager to complement tracking

##Special Thanks
- [to-do](http://github.com/kristenmills/to-do) and
[timetrap](https://github.com/samg/timetrap) for letting me borrow some code

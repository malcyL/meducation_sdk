# Meducation API

[![Build Status](https://travis-ci.org/meducation/meducation_api.png)](https://travis-ci.org/meducation/meducation_api)
[![Dependencies](https://gemnasium.com/meducation/meducation_api.png?travis)](https://gemnasium.com/meducation/meducation_api)
[![Code Climate](https://codeclimate.com/github/meducation/meducation_api.png)](https://codeclimate.com/github/meducation/meducation_api)

A wrapper for Meducation's API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meducation_api'
```

And then execute:

    $ bundle

## Usage

Resources accept the following methods:

```ruby
MeducationAPI::MediaFile.find(id)
MeducationAPI::MediaFile.find_each #=> do ... end
MeducationAPI::MediaFile.where(foo: 'bar') #=> do ... end
MeducationAPI::MediaFile.create(foo: 'bar')
```

The following objects are currently supported:

```ruby
MediaFile
User
ItemComment
```

### Is it any good?

[Yes.](http://news.ycombinator.com/item?id=3067434)

## Contributing

Firstly, thank you!! :heart::sparkling_heart::heart:

We'd love to have you involved. Please read our [contributing guide](https://github.com/meducation/propono/tree/master/CONTRIBUTING.md) for information on how to get stuck in.

### Contributors

This project is managed by the [Meducation team](http://company.meducation.net/about#team). 

These individuals have come up with the ideas and written the code that made this possible:

- [Jeremy Walker](http://github.com/iHID)

## Licence

Copyright (C) 2013 New Media Education Ltd

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

A copy of the GNU Affero General Public License is available in [Licence.md](https://github.com/meducation/propono/blob/master/LICENCE.md)
along with this program.  If not, see <http://www.gnu.org/licenses/>.

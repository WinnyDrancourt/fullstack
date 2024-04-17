
# Week 5 Day 3 : Chinook

Some fun with DB using Active Record !


## Run Locally

Clone the project

```bash
  git clone https://github.com/WinnyDrancourt/week_5_day_1.git
```

Go to the project directory


Install dependencies

```bash
  bundle Install
```

Then
```bash
rails c
```


## Running Tests

To have results of tests, run the following command :

Easy level

What is the total number of Album objects contained in the database ?
```ruby
Album.count
```
Who is the author of the song "White Room"?
```ruby
Album.count
```
Which song lasts exactly 188133 milliseconds?
```ruby
Track.find_by(duration: 188133).title
```
Which band released the album "Use Your Illusion II" ?
```ruby
Album.find_by(title: "Use Your Illusion II").artist
```


Medium level

How many albums have "Great" in their title?
```ruby
Album.where("title like ?", "%great%").count
```

Deletes all the albums whose name contains "music".
```ruby
Album.where("title like ?", "%music%").destroy_all
```

How many albums are there written by AC/DC ?
```ruby
Album.where(artist: "AC/DC").count
```

How many songs last exactly 158589 milliseconds?
```ruby
Track.where(duration: 158589).count
```


Difficult level

puts in console all the titles of AC/DC.
```ruby
Track.where(artist: "AC/DC").each do |track|
  puts track.title
end
```

puts in console all the titles of the album "Let There Be Rock".
```ruby
Track.where(album: "Let There Be Rock").each do |track|
  puts track.title
end
```

Calculate the total price of this album and its total duration.
```ruby
price = Track.where(album: "Let There Be Rock").sum(:price).round(2)
duration = Track.where(album: "Let There Be Rock").sum(:duration)
puts "#{price}, #{duration}"
```

Calculate the cost of the entire "Deep Purple" discography.
```ruby
Track.where(artist: "Deep Purple").sum(:price).round(2)
```

Modify (via a loop) all the titles of "Eric Clapton" so that they are displayed with "Britney Spears" in artist.
```ruby
Track.where(artist: "Eric Clapton").each do |track|
  track.update(artist: 'Britney Spears')
end
```




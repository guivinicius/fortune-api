# BSD Fortune API

A simple BSD Fortune API.

## Runnig the app

It's a Sinatra app so it's pretty simple.

```bash
  cd ~/YOUR_PATH/fortune-api/
  ruby app.rb
```
Then go to http://localhost:4567/

## Installing Fortune

The app is based on the Fortune program, so you will need it.

### on Mac OS (with Homebrew)

```bash
  brew update
  brew install fortune
```

### on Linux

```bash
  sudo apt-get update
  sudo apt-get install fortune
```

## Using it

### as JSON

```
  /fortune.json
```

### as Text

```
  /fortune
```

### Available Parameters

* **long**
  * 0 = only short fortunes (<= 160)
  * 1 = only longer fortunes (> 160)
  * nil = random
* **dirty**
  * 0 or nil = only non offensive fortunes
  * 1 = only offensive fortunes

## Examples

### as text
```
  /fortunes?long=1
  /fortunes?dirty=1
  /fortunes?dirty=1&long=1
```
#### result

```
  The difference between a career and a job is about 20 hours a week.
```

### as json
```
  /fortunes.json?long=1
  /fortunes.json?dirty=1
  /fortunes.json?dirty=1&long=1
```

#### result

```json
  {
    "text": "The difference between a career and a job is about 20 hours a week."
  }
```

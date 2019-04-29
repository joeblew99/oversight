# github.com/joeblew99/oversight/easy

[![travis-ci](https://api.travis-ci.org/ucirello/oversight.svg?branch=master)](https://travis-ci.org/ucirello/oversight)
[![GoDoc](https://godoc.org/github.com/joeblew99/oversight/easy?status.svg)](https://godoc.org/github.com/joeblew99/oversight/easy)
[![SLA](https://img.shields.io/badge/SLA-95%25-brightgreen.svg)](https://github.com/ucirello/public/blob/master/SLA.md)

This repository is covered by this [SLA](https://github.com/ucirello/public/blob/master/SLA.md).

Package easy is an easier interface to use github.com/joeblew99/oversight. Its lifecycle
is managed through context.Context. Stop a given oversight tree by cancelling
its context.

go get [-u -f] github.com/joeblew99/oversight/easy

http://godoc.org/github.com/joeblew99/oversight/easy


## Quickstart

```
package main

import oversight "github.com/joeblew99/oversight/easy"

func main() {
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	// use cancel() to stop the oversight
	ctx = oversight.WithContext(ctx)
	oversight.Add(ctx, func(ctx context.Context) {
		// ...
	})
}
```
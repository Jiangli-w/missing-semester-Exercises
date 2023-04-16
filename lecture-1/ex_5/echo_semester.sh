#!/usr/bin/env bash
echo '#!/bin/sh' > /tmp/missing/semester
echo curl --head --silent https://missing.csail.mit.edu >> /tmp/missing/semester

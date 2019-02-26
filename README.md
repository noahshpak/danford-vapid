# Danford Works
This site was build using [Vapid](https://github.com/vapid/vapid). Please see the docs to understand the templating engine and how it connects to the Content Management System.

## Getting Started
1. `npm install -g @vapid/cli`
2. `cd dfw`
3. You may need to `npm rebuild flatpickr`
4. `vapid start .`

This will launch the server on `localhost:3000` with the Content Management Dashboard on `localhost:3000/dashboard`.

I currently have the username as noahshpak@gmail.com and password: `password`. Please change these when you get the chance.

## Dockerization
I spent some time creating the Dockerfile for this to make deployment as easy as possible. To build the image, run the following:

1. `cd dfw`
2. `docker build  -t <your-docker-usr>/<your-tag> .`
3. `docker run --name dfw-vapid -p 3000:3000 <your-docker-usr>/<your-tag>`
4. You should then be able to access the site on `localhost:3000` as before due to the port forwarding. 


If you are unfamiliar with docker, see the [docs](https://www.docker.com/get-started). 

**Note:** when deploying to a server, you will need to change the 3000 to 80. 


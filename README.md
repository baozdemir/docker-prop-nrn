
### docker-prod-nrn

  
This project is just a boilerplate, the purpose of this project is to show the structure of the project, explain the used dockerfiles, to explain the deployment pipeline.
A project that runs a Nginx, Node server and a react app(just build) via two separate containers, using Docker Compose and using Bitbucket Deployment Pipeline. 
  

# **Production**

  

### - Under the hood

  

- NodeJS

- ReactJS

- [NGINX](https://github.com/umputun/nginx-le)

- Bitbucket Deployment Pipeline


### - Prerequisites

  
- Docker

### -  Folder Structure

- to do ...


### -  Nginx Image
	
Nginx and Letsencrypt configuration consists of 3 files. 
	  - [nginx.conf](https://github.com/baozdemir/docker-prop-nrn/blob/master/nginx/nginx.conf) 
	  - [nginx_my.conf](https://github.com/baozdemir/docker-prop-nrn/blob/master/nginx/nginx_my.conf)
	  - [nginx.env](https://github.com/baozdemir/docker-prop-nrn/blob/master/nginx/nginx.env)
	  
[...more](https://github.com/umputun/nginx-le)

- to do ...

### -  Node Image

- to do ...


### -  React Image

- to do ...


### - Using Deployment Pipeline


- to do ...


### - Using docker compose

 

Start via:

  

```

$ docker-compose up

  

# or detached

$ docker-compose up -d

```

  

Run a single container via:

  

```

$ docker-compose up server

```

  

Check status:

  

```

$ docker-compose ps

```

  

Stop:

  

```

$ docker-compose down

```

  

NOTE : if any dependencies change in package.json files, you probably will need to rebuild the container for the changes to appear, e.g.,

  

```

$ docker-compose down

$ docker-compose build

$ docker-compose up

```

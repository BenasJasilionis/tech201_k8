## What is Kubernetes
* Kubernetes, also known as K8s, is an open-source system for automating deployment, scaling, and management of containerized applications
* It groups containers that make up an application into logical units for easy management and discovery
## Kubernetes benefits
* **Automated Operations** -> Kubernetes has built-in commands to handle a lot of the heavy lifting that goes into application management, allowing you to automate day-to-day operations. You can make sure applications are always running the way you intended them to run
* **Infrastructure Abstraction** -> When you install Kubernetes, it handles the compute, networking, and storage on behalf of your workloads. This allows developers to focus on applications and not worry about the underlying environment
* **Service Health Monitoring** -> Kubernetes continuously runs health checks against your services, restarting containers that fail, or have stalled, and only making available services to users when it has confirmed they are running
## Kubernetes services
* `Automated rollouts and rollbacks` -> Kubernetes progressively rolls out changes to your application or its configuration, while monitoring application health to ensure it doesn't kill all your instances at the same time. If something goes wrong, Kubernetes will rollback the change for you. Take advantage of a growing ecosystem of deployment solutions
* `Service discovery and load balancing` -> No need to modify your application to use an unfamiliar service discovery mechanism. Kubernetes gives Pods their own IP addresses and a single DNS name for a set of Pods, and can load-balance across them
* `Storage orchestration` -> Automatically mount the storage system of your choice, whether from local storage, a public cloud provider such as AWS or GCP, or a network storage system such as NFS, iSCSI, Ceph, Cinder
* `Self-healing` -> Restarts containers that fail, replaces and reschedules containers when nodes die, kills containers that don't respond to your user-defined health check, and doesn't advertise them to clients until they are ready to serve
* `Secret and configuration management` -> Deploy and update secrets and application configuration without rebuilding your image and without exposing secrets in your stack configuration
* `Automatic bin packing` -> Automatically places containers based on their resource requirements and other constraints, while not sacrificing availability. Mix critical and best-effort workloads in order to drive up utilization and save even more resources
* `Batch execution` -> In addition to services, Kubernetes can manage your batch and CI workloads, replacing containers that fail, if desired
* `Horizontal scaling` -> Scale your application up and down with a simple command, with a UI, or automatically based on CPU usage
* `IPv4/IPv6 dual-stack` -> Allocation of IPv4 and IPv6 addresses to Pods and Services
* `Designed for extensibility` -> Add features to your Kubernetes cluster without changing upstream source code
## Kubernetes objects
Kubernetes objects are persistent entities in the Kubernetes system. Kubernetes uses these entities to represent the state of your cluster. Specifically, they can describe:
* What containerized applications are running (and on which nodes)
* The resources available to those applications
* The policies around how those applications behave, such as restart policies, upgrades, and fault-tolerance
* A Kubernetes object is a "record of intent"--once you create the object, the Kubernetes system will constantly work to ensure that object exists
* By creating an object, you're effectively telling the Kubernetes system what you want your cluster's workload to look like; this is your cluster's desired state
* Objects are created, modified and deleted using `Kubernetes APIs`
## Kubernetes architecture
* `Kubernetes cluster` -> A set of nodes that run 
## Setting up a K8 cluster on docker desktop
1) Open docker desktop
2) Click on the cogwheel in the top right
3) Click on kubernetes
4) Tick the enable box
5) Both docker and kubernetes should be green in the bottom left
6) If required, restart your machine
7) Once both docker and kubernetes are green, open a gitbash terminal as an admin
8) Check whether everything is working by running the following command: 
```
kubectl get service
```
9) If everything is working, you should see output similar to the following:

![](images/kubectl.png)



## Kubernetes
* Cluster can be set up locally or globally -> where k8 commands are run
* Clusters use apis on top of docker apis
* K8 uses yml
* Controller manages everything inside cluster
* Can run 2 containers in a pod, best to run 1
* 2 types of clusters available  -> multi-node(ec2 instances) and single node
* Single node is dev environment and test -> make with Minikube
* Multi-node is production
* K8 pods, services, deployment, name, space, cluster service, NodePort, LB services, replica sets
* K8 benefits: Self Healing, autoscaling, load balancing, automated roll backs
* Each service in a cluster is a microservice
* Each pod has its own ip
* `kubectl` communicate with cluster
* Check if server is running: ` kubectl get service`
* Open Docker desktop
* Make sure docker and K8 is running
* Enable kubernetes
* Apply and restart
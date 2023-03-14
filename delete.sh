kubectl delete deploy app-deployment
kubectl delete deploy mongo
kubectl delete service mongo
kubectl delete service app-svc
kubectl delete pvc mongo-db
kubectl delete hpa sparta-mongo-db-deploy
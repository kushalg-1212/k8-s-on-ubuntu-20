# k8-s-on-ubuntu-20

Please Apply Control.sh on cluster control node and worker.sh on worker nodes 

After running control.sh please apply the below command to allow your user to talk to Kubernetes socket 

```
mkdir -p $HOME/.kube
```

```
mkdir -p $HOME/.kube
```

```
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
```

`sudo chown $(id -u):$(id -g) $HOME/.kube/config`


It also shows you a command out put to join worker nodes on this cluster which looks like below 

`kubeadm join 192.168.31.75:6443 --token 04uwye.mcbu1o1odxyxfomy --discovery-token-ca-cert-hash sha256:33931d238d60544414a8bdf87b3beddc999e805ae75b1cb31bbec9c5bd5cf5fe`


Copy the above command in a note pad file 

Install CNI plugin , there are many plugins avilable for kubernetes but we have used CALICO 

enter the below command to apply CNI (CNI is required by cluster control and pods to communicate with each other)

`kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.24.5/manifests/calico.yaml`


once CNI is installed go ahead and run the worker.sh script in worker nodes 

# Note : Please use the both scritps with sudo ,  and grant execution permission by doing chmod +X control.sh and chmod +x worker.sh 


The script is self explanotory , each line is a command 

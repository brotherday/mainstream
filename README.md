# Mainstream
Mainstream is a decentralised file hosting platform for presentations. It can be used to rank speakers and authors, find the most influential people in your space, even attribute and get some feedback from people around the world.

Mainstream is not owned by anyone. It is fully decentralised. You can even run your own node on top on the Filecoin network with your own organization or you can run your own node and access to the public network of presentations.

![](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/0db5b706-5885-4630-a71a-9eaa76c73a17/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230206%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230206T163907Z&X-Amz-Expires=86400&X-Amz-Signature=b61066ae98f5137d41fedc65139ac43ace7c304b5dc3b6ce570277c4d98fe01b&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Untitled.png%22&x-id=GetObject)

# Design

- Entity association diagram
    - [x]  1NF
- Entity relationship diagram
    - [x]  2NF
- [x]  Class diagram
- [x]  Interfaces
- [x]  Starting repository
- [ ]  Web design

# Implementation

- Smart contracts
    - [x]  DealRewarder.sol (store)
    - [x]  FilecoinMarketConsumer.sol (retrieve)
- Store
    - Filecoin
        - [ ]  FilecoinMarketConsumer.sol
            - [ ]  Proposal CID (file encoded as base32)
            - [ ]  dealID returned by provider
            - [ ]  provider who owns the dealId
    - REST API
        - [ ]  ~~nft.storage~~
        - [ ]  ~~web3.storage~~
        - [ ]  Lotus JSON RPC
            
            [References](https://lotus.filecoin.io/reference/)
            
    - Library
        - [ ]  ~~lighthouse (node.js)~~
        - [ ]  ~~web3.storage~~
        - [ ]  **Filecoin Go JSON RPC** [github.com/filecoin-project/go-jsonrpc](http://github.com/filecoin-project/go-jsonrpc)
            
            [API access](https://lotus.filecoin.io/reference/basics/api-access/#publicly-available-hosted-endpoints)
            
        - [x]  IPLD CARv1 explained
            
            [IPLD ♦ CARv1 Specification](https://ipld.io/specs/transport/car/carv1/#go)
            
- Export to PDF
    - [x]  **Cloud Convert API** https://cloudconvert.com/api/v2
        
        [Team Mainstream | Postman API Network](https://www.postman.com/science-explorer-32798186/workspace/team-mainstream)
        
- Template page
    - [x]  Tailwind
    - [x]  Go HTTP
- Orbit-db
    - [x]  Go-orbit-db
        - [ ]  Comments
- ipfs/libp2p
    - [x]  [github.com/libp2p/go-libp2p-kad-dht](http://github.com/libp2p/go-libp2p-kad-dht)
        
        No, too dangerous.
        
    - [ ]  [github.com/ipfs/go-cid](http://github.com/ipfs/go-cid)
- Ethereum
    - [ ]  Go bindings with geth
        
        [Go Contract Bindings | go-ethereum](https://geth.ethereum.org/docs/developers/dapp-developer/native-bindings#accessing-contracts)
        

# Deployment

- Service
    - [ ]  ~~Bacalhau (prefered)~~
        
        Only for data
        
    - [x]  Spheron Computer
        - [x]  Runs containers
        - [x]  Access to HTTP endpoint on ports
            - [x]  80
            - [ ]  443
        
        [https://vimeo.com/744703196](https://vimeo.com/744703196)
        
- Infrastructure
    - [x]  Docker (prefered)
        
        [Docker](https://hub.docker.com/r/docker/compose)
        
        Docker compose image doesn’t work. 
        
    - [x]  Kubernetes (too complicated)
        
        [Docker](https://hub.docker.com/r/alpine/k8s)
        
        ```jsx
        $ docker search docker/desktop-kubernetes
        NAME                                           DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
        docker/desktop-kubernetes                      Kubernetes binaries for Desktop. Compiled fr…   16
        docker/desktop-kubernetes-apiserver            Mirror of selected tags from k8s.gcr.io/kube…   1
        docker/desktop-kubernetes-proxy                Mirror of selected tags from k8s.gcr.io/kube…   0
        docker/desktop-kubernetes-controller-manager   Mirror of selected tags of k8s.gcr.io/kube-c…   0
        docker/desktop-kubernetes-scheduler            Mirror of selected tags of k8s.gcr.io/kube-s…   0
        docker/desktop-kubernetes-etcd                 Mirrors some tags from k8s.gcr.io/etcd          0
        docker/desktop-kubernetes-coredns              Mirror of selected tags of k8s.gcr.io/coredn…   0
        docker/desktop-kubernetes-pause                Mirror of selected tags from k8s.gcr.io/pause   0
        ```
        
- [ ]  Images
    - [x]  Docker Hub
    - [x]  GitHub Packages (prefered)

# Artifacts

- [x]  GitHub templates
- [x]  URL
    - [x]  Container can run as a cluster
- [x]  Container image
    
    [](http://ghcr.io/brotherday/mainstream:v1.0)
    
- [x]  Packages
    - [x]  GitHub template
    - [ ]  Go package
    - [ ]  Yarn package

# Features

- [ ]  **File hosting on Filecoin from smart contracts**
    
    Found a snippet for it
    
- [x]  UI/UX
    - [x]  Hugo
    
    [Introduction to Hugo Templating](https://gohugo.io/templates/introduction/)
    
    - [ ]  Tailwind
- [ ]  Thread (getAll())
- [ ]  Comment thread from Orbit DB
- [ ]  Convert text and “binary” files into PDF

# Optional features

- [ ]  Manage deals
- [ ]  Realtime comments
- [ ]  Realtime notifications on new comment

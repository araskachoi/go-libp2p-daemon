package main
  
import(
        "fmt"

        peer "github.com/libp2p/go-libp2p-peer"
        multiaddr "github.com/multiformats/go-multiaddr"
        client "github.com/libp2p/go-libp2p-daemon/p2pclient"
)

func main() {

        ma, _ := multiaddr.NewMultiaddr("/unix/tmp/p2pd.sock")
        listenMaddr, _ := multiaddr.NewMultiaddr("/ip4/10.1.0.6/tcp/9998")

        c, err := client.NewClient(ma, listenMaddr)
        if err!=nil{
                panic(err)
        }

        id, maddrs, err := c.Identify()
        if err !=nil {
                panic(err)
        }
        fmt.Println("peerid: ", id.Pretty())
        fmt.Println("maddrs: ", maddrs)

        pid, err := peer.IDB58Decode("QmbF4utgwwjPmRtAaAxzJmEizaCr8NVr5jNs3g43cgc6vJ")
        if err !=nil {
                panic(err)
        }

        err = pid.Validate()
        if err !=nil {
                panic(err)
        } else {
                fmt.Println("peer id is valid")
                fmt.Println("attemping to connect to pid: ",pid)
        }

        //maddrs needs to be the address list from the client/daemon that you are connecting to.
        err = c.Connect(pid,maddrs)
        if err !=nil {
                panic(err)
        }

        // select {}

}

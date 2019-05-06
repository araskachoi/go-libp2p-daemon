module github.com/libp2p/go-libp2p-daemon

require (
	github.com/gogo/protobuf v1.2.1
	github.com/hashicorp/go-multierror v1.0.0
	github.com/ipfs/go-cid v0.0.1
	github.com/ipfs/go-log v0.0.1
	github.com/libp2p/go-libp2p v0.0.22
	github.com/libp2p/go-libp2p-autonat-svc v0.0.5
	github.com/libp2p/go-libp2p-circuit v0.0.6-0.20190505113633-0376297b884c
	github.com/libp2p/go-libp2p-connmgr v0.0.1
	github.com/libp2p/go-libp2p-crypto v0.0.2
	github.com/libp2p/go-libp2p-host v0.0.1
	github.com/libp2p/go-libp2p-kad-dht v0.0.10
	github.com/libp2p/go-libp2p-net v0.0.2
	github.com/libp2p/go-libp2p-peer v0.1.0
	github.com/libp2p/go-libp2p-peerstore v0.0.5
	github.com/libp2p/go-libp2p-protocol v0.0.1
	github.com/libp2p/go-libp2p-pubsub v0.0.2
	github.com/libp2p/go-libp2p-quic-transport v0.0.3
	github.com/libp2p/go-libp2p-routing v0.0.1
	github.com/multiformats/go-multiaddr v0.0.1
	github.com/multiformats/go-multiaddr-net v0.0.1
	github.com/multiformats/go-multihash v0.0.1
	github.com/prometheus/client_golang v0.9.3-0.20190127221311-3c4408c8b829
	github.com/stretchr/testify v1.3.0
	github.com/vyzo/go-mplex v0.0.0-20190506084127-53d5bb35e24a // indirect
	github.com/whyrusleeping/go-smux-multiplex v3.0.16+incompatible
)

replace github.com/libp2p/go-mplex => github.com/vyzo/go-mplex v0.0.0-20190506082732-3e1791862d55

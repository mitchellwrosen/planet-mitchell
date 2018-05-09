{-# language CPP #-}

#ifdef USE_NETWORK

module Socket
  ( Socket(..)
  , Family(..)
  , isSupportedFamily
  , SocketType(..)
  , isSupportedSocketType
  , SockAddr(..)
  , isSupportedSockAddr
  , SocketStatus(..)
  , HostAddress
  , iNADDR_ANY
  , hostAddressToTuple
  , tupleToHostAddress
  , HostAddress6
  , iN6ADDR_ANY
  , hostAddress6ToTuple
  , tupleToHostAddress6
  , FlowInfo
  , ScopeID
  , htonl
  , ntohl
  , ShutdownCmd(..)
  , ProtocolNumber
  , defaultProtocol
  , PortNumber
  , aNY_PORT
  , HostName
  , ServiceName
  , AddrInfo(..)
  , AddrInfoFlag(..)
  , addrInfoFlagImplemented
  , defaultHints
  , getAddrInfo
  , NameInfoFlag(..)
  , getNameInfo
  , socket
  , socketPair
  , connect
  , bind
  , listen
  , accept
  , getPeerName
  , getSocketName
  , getPeerCred
  , socketPort
  , socketToHandle
  , send
  , sendTo
  , sendAll
  , sendAllTo
  , sendBuf
  , sendBufTo
  , sendFd
  , sendMany
  , sendManyTo
  , recv
  , recvFrom
  , recvBuf
  , recvBufFrom
  , recvFd
  , inet_addr
  , inet_ntoa
  , shutdown
  , close
  , isConnected
  , isBound
  , isListening
  , isReadable
  , isWritable
  , SocketOption(..)
  , isSupportedSocketOption
  , getSocketOption
  , setSocketOption
  , sOMAXCONN
  , sOL_SOCKET
  , sCM_RIGHTS
  , maxListenQueue
  , withSocketsDo
  , fdSocket
  , mkSocket
  , setNonBlockIfNeeded
  ) where

import Network.Socket hiding (recv, recvFrom, send, sendTo)
import Network.Socket.ByteString

#else

module Socket where

#endif

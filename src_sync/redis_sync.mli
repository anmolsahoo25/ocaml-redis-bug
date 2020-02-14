(**
   Blocking client for Redis
*)

module IO : Redis.S.IO

module Client : Redis.S.Client with module IO = IO

module Cache (Params : Redis.S.Cache_params) : S.Cache
  with module IO = IO
  with module Client = Client

module Mutex :Redis.S.Mutex
  with module IO = IO
  with module Client = Client

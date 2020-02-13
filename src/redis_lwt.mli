module IO : S.IO with type 'a t = 'a Lwt.t and type 'a stream = 'a Lwt_stream.t and type fd = Lwt_unix.file_descr

module Client : S.Client with module IO = IO

module Cache (Params : S.Cache_params) : S.Cache
  with module IO = IO
  with module Client = Client

module Mutex : S.Mutex
  with module IO = IO
  with module Client = Client

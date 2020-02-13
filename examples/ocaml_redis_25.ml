open Lwt.Infix
let host = "127.0.0.1" and  port = 6379

let () =

  let open Redis_lwt.Client in 

  let t =  (connect {host=host; port=port})  in

  ignore (Lwt_main.run t)


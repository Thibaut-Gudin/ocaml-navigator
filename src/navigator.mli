[@@@js.stop]

val connection_available : unit -> bool

val share_available : unit -> bool

[@@@js.start]

[@@@js.implem
let connection_available () =
  Js_of_ocaml.Js.Optdef.test
    Js_of_ocaml.Js.Unsafe.global##.navigator##.connection]

[@@@js.implem
let share_available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global##.navigator##.share]

module Connection : sig
  type network_info

  val downlink : network_info -> int [@@js.get]

  val downlink_max : network_info -> int [@@js.get "downlinkMax"]

  val effective_type : network_info -> string [@@js.get "effectiveType"]

  val rtt : network_info -> int [@@js.get]

  val save_data : network_info -> bool [@@js.get "saveData"]

  val type_ : network_info -> string [@@js.get]
end

val get_connection : unit -> Connection.network_info
  [@@js.get "navigator.connection"]

module Share : sig
  type promise

  type data

  val data : ?url:string -> ?text:string -> ?title:string -> unit -> data
    [@@js.builder] [@@js.verbatim_names]

  type result

  val then_ : promise -> (result -> unit) -> (string -> unit) -> unit
    [@@js.call]

  val catch : (result -> unit) -> result -> unit [@@js.call]
end

val share : Share.data -> Share.promise [@@js.global "navigator.share"]

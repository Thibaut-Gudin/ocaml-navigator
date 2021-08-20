[@@@js.stop]

val available : unit -> bool

val connection_available : unit -> bool

val share_available : unit -> bool

[@@@js.start]

[@@@js.implem
let available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global##.navigator]

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

  val then_ :
    promise ->
    ?onFulfilled:(result -> promise) ->
    ?onRejected:(string -> promise) ->
    unit ->
    promise
    [@@js.call]

  val then_unit :
    promise ->
    ?onFulfilled:(result -> unit) ->
    ?onRejected:(string -> unit) ->
    unit ->
    unit
    [@@js.call "then"]

  val then_unit_to_catch :
    promise ->
    ?onFulfilled:(result -> unit) ->
    ?onRejected:(string -> unit) ->
    unit ->
    promise
    [@@js.call "then"]

  val catch : promise -> (string -> promise) -> promise [@@js.call]

  val catch_unit : promise -> (string -> unit) -> unit [@@js.call "catch"]
end

val share : Share.data -> Share.promise [@@js.global "navigator.share"]

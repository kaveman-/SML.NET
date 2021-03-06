signature OPTION =
  sig
    datatype option = datatype Datatypes.option
    exception Option
    val getOpt : 'a option * 'a -> 'a
    val isSome : 'a option -> bool
    val valOf : 'a option -> 'a
    val filter : ('a -> bool) -> 'a -> 'a option
    val join : 'a option option -> 'a option
    val app : ('a -> unit) -> 'a option -> unit
    val map : ('a -> 'b) -> 'a option -> 'b option
    val mapPartial : ('a -> 'b option) -> 'a option -> 'b option
    val compose : ('a -> 'c) * ('b -> 'a option) -> 'b -> 'c option
    val composePartial : ('a -> 'c option) * ('b -> 'a option)
                         -> 'b -> 'c option
  end

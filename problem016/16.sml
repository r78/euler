fun chr_to_int(chr) =
  ord(chr) - 48;

let val sum_of_digits = 
  let val st_number =
      map chr_to_int (explode(IntInf.toString(IntInf.pow(Int.toLarge(2), 1000))) ) 
      in
          foldl op+ 0 st_number
      end;
  in
  print(Int.toString(sum_of_digits) ^ "\n")
end;

val _ = OS.Process.exit(OS.Process.success);

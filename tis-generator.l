# PicoLisp tis.config file generator
(de prn (F M)
   (prinl "{")
   (printsp "name" ': (pack F " - " M))
   (prinl ",")
   (printsp "files" ': "all")
   (prinl ",")
   (printsp "machdep" ': (text M))
   (prinl ",")
   (printsp "main" ': (text F))
   (prinl)
   (prinl "}") )
(setq
   *M
   (quote
      sparc_64 sparc_32
      x86_32 x86_64
      armeb_eabi arm_eabi aarch64 aarch64eb
      rv64ifdq rv32ifdq
      mips_o32 mips_n32 mips_64 mipsel_64
   )
   *F
   (quote
      x25519 ed25519 )
   *L
   (make
      (for F *F
         (for M *M
            (link (cons F M)) ) ) ) )
(out "tis.config"
   (prinl "// Auto genetated file")
   (prinl "[")
   (for (L *L L (cdr L))
      (let (F (caar L)  M (cdar L))
         (prn F M)
         (and (cdr L) (prinl ",")) ) )
   (prinl "]") )
(bye)

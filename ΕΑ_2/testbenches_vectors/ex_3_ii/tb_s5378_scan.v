`timescale 1ns/1ps

module tb_s5378;

  reg CK;
  reg test_se;
  reg test_si;
  wire test_so;

  // 35 PIs
  reg n3065gat, n3066gat, n3067gat, n3068gat, n3069gat, n3070gat, n3071gat,
      n3072gat, n3073gat, n3074gat, n3075gat, n3076gat, n3077gat, n3078gat,
      n3079gat, n3080gat, n3081gat, n3082gat, n3083gat, n3084gat, n3085gat,
      n3086gat, n3087gat, n3088gat, n3089gat, n3090gat, n3091gat, n3092gat,
      n3093gat, n3094gat, n3095gat, n3097gat, n3098gat, n3099gat, n3100gat;

  // POs (exclude test_so)
  wire n3104gat, n3105gat, n3106gat, n3107gat, n3108gat, n3109gat, n3110gat,
       n3111gat, n3112gat, n3113gat, n3114gat, n3115gat, n3116gat, n3117gat,
       n3118gat, n3119gat, n3120gat, n3121gat, n3122gat, n3123gat, n3124gat,
       n3125gat, n3126gat, n3127gat, n3128gat, n3129gat, n3130gat, n3131gat,
       n3132gat, n3133gat, n3134gat, n3135gat, n3136gat, n3137gat, n3138gat,
       n3139gat, n3140gat, n3141gat, n3142gat, n3143gat, n3144gat, n3145gat,
       n3146gat, n3147gat, n3148gat, n3149gat, n3150gat, n3151gat, n3152gat;

  s5378 dut (
    .CK(CK),
    .n3065gat(n3065gat), .n3066gat(n3066gat), .n3067gat(n3067gat),
    .n3068gat(n3068gat), .n3069gat(n3069gat), .n3070gat(n3070gat),
    .n3071gat(n3071gat), .n3072gat(n3072gat), .n3073gat(n3073gat),
    .n3074gat(n3074gat), .n3075gat(n3075gat), .n3076gat(n3076gat),
    .n3077gat(n3077gat), .n3078gat(n3078gat), .n3079gat(n3079gat),
    .n3080gat(n3080gat), .n3081gat(n3081gat), .n3082gat(n3082gat),
    .n3083gat(n3083gat), .n3084gat(n3084gat), .n3085gat(n3085gat),
    .n3086gat(n3086gat), .n3087gat(n3087gat), .n3088gat(n3088gat),
    .n3089gat(n3089gat), .n3090gat(n3090gat), .n3091gat(n3091gat),
    .n3092gat(n3092gat), .n3093gat(n3093gat), .n3094gat(n3094gat),
    .n3095gat(n3095gat), .n3097gat(n3097gat), .n3098gat(n3098gat),
    .n3099gat(n3099gat), .n3100gat(n3100gat),

    .n3104gat(n3104gat), .n3105gat(n3105gat), .n3106gat(n3106gat),
    .n3107gat(n3107gat), .n3108gat(n3108gat), .n3109gat(n3109gat),
    .n3110gat(n3110gat), .n3111gat(n3111gat), .n3112gat(n3112gat),
    .n3113gat(n3113gat), .n3114gat(n3114gat), .n3115gat(n3115gat),
    .n3116gat(n3116gat), .n3117gat(n3117gat), .n3118gat(n3118gat),
    .n3119gat(n3119gat), .n3120gat(n3120gat), .n3121gat(n3121gat),
    .n3122gat(n3122gat), .n3123gat(n3123gat), .n3124gat(n3124gat),
    .n3125gat(n3125gat), .n3126gat(n3126gat), .n3127gat(n3127gat),
    .n3128gat(n3128gat), .n3129gat(n3129gat), .n3130gat(n3130gat),
    .n3131gat(n3131gat), .n3132gat(n3132gat), .n3133gat(n3133gat),
    .n3134gat(n3134gat), .n3135gat(n3135gat), .n3136gat(n3136gat),
    .n3137gat(n3137gat), .n3138gat(n3138gat), .n3139gat(n3139gat),
    .n3140gat(n3140gat), .n3141gat(n3141gat), .n3142gat(n3142gat),
    .n3143gat(n3143gat), .n3144gat(n3144gat), .n3145gat(n3145gat),
    .n3146gat(n3146gat), .n3147gat(n3147gat), .n3148gat(n3148gat),
    .n3149gat(n3149gat), .n3150gat(n3150gat), .n3151gat(n3151gat),
    .n3152gat(n3152gat),

    .test_si(test_si),
    .test_so(test_so),
    .test_se(test_se)
  );

  // Bundle buses (for easy assignment/logging)
  wire [34:0] PI_bus = {
    n3100gat, n3099gat, n3098gat, n3097gat, n3095gat, n3094gat, n3093gat,
    n3092gat, n3091gat, n3090gat, n3089gat, n3088gat, n3087gat, n3086gat,
    n3085gat, n3084gat, n3083gat, n3082gat, n3081gat, n3080gat, n3079gat,
    n3078gat, n3077gat, n3076gat, n3075gat, n3074gat, n3073gat, n3072gat,
    n3071gat, n3070gat, n3069gat, n3068gat, n3067gat, n3066gat, n3065gat
  };

  wire [48:0] PO_bus = {
    n3152gat, n3151gat, n3150gat, n3149gat, n3148gat, n3147gat, n3146gat,
    n3145gat, n3144gat, n3143gat, n3142gat, n3141gat, n3140gat, n3139gat,
    n3138gat, n3137gat, n3136gat, n3135gat, n3134gat, n3133gat, n3132gat,
    n3131gat, n3130gat, n3129gat, n3128gat, n3127gat, n3126gat, n3125gat,
    n3124gat, n3123gat, n3122gat, n3121gat, n3120gat, n3119gat, n3118gat,
    n3117gat, n3116gat, n3115gat, n3114gat, n3113gat, n3112gat, n3111gat,
    n3110gat, n3109gat, n3108gat, n3107gat, n3106gat, n3105gat, n3104gat
  };

  integer f_vec, f_state, f_out;
  integer i;

  // parsed fields
  reg [34:0]  pi_bits;
  reg [1:0]   sise_bits;     // {SI, SE} or {?,?} as provided
  reg [178:0] scan_bits;

  // For robust line read
  reg [2047:0] line;

  // clock
  initial CK = 0;
  always #5 CK = ~CK;

  task shift_in(input [178:0] bits);
    begin
      // scan enable must be 1 for shifting
      test_se = 1'b1;
      for (i = 178; i >= 0; i = i - 1) begin
        test_si = bits[i];
        @(posedge CK);
      end
    end
  endtask

  task capture_one;
    begin
      test_se = 1'b0;
      @(posedge CK);
    end
  endtask

  task log_scan_state;
    begin
      // Shift out 179 bits through test_so
      test_se = 1'b1;
      test_si = 1'b0;
      for (i = 0; i < 179; i = i + 1) begin
        @(posedge CK);
        $fwrite(f_state, "%b", test_so);
      end
      $fwrite(f_state, "\n");
    end
  endtask

  initial begin
    // init
    test_se = 0;
    test_si = 0;
    {n3065gat,n3066gat,n3067gat,n3068gat,n3069gat,n3070gat,n3071gat,
     n3072gat,n3073gat,n3074gat,n3075gat,n3076gat,n3077gat,n3078gat,
     n3079gat,n3080gat,n3081gat,n3082gat,n3083gat,n3084gat,n3085gat,
     n3086gat,n3087gat,n3088gat,n3089gat,n3090gat,n3091gat,n3092gat,
     n3093gat,n3094gat,n3095gat,n3097gat,n3098gat,n3099gat,n3100gat} = 0;

    f_vec   = $fopen("s5378.vec", "r");
    f_state = $fopen("scan_state.log", "w");
    f_out   = $fopen("outputs.log", "w");

    if (f_vec == 0) begin
      $display("ERROR: cannot open s5378.vec");
      $finish;
    end

    while (!$feof(f_vec)) begin
      // read raw line
      line = "";
      $fgets(line, f_vec);

      // skip headers/comments/blank
      if (line[7:0] == "P")       continue;
      if (line[7:0] == "#")       continue;
      if (line[23:0] == "PI(primary inputs)") continue;
      if (line[15:0] == "PI:")    continue;
      if (line[15:0] == "PO:")    continue;
      if (line[15:0] == "##")     continue;

      // parse: 35bit PI, 2bit (SI SE), 179bit scan
      if ($sscanf(line, "%b %b %b", pi_bits, sise_bits, scan_bits) != 3)
        continue;

      // Apply PI bits in the same order as PI_bus was built
      {n3100gat, n3099gat, n3098gat, n3097gat, n3095gat, n3094gat, n3093gat,
       n3092gat, n3091gat, n3090gat, n3089gat, n3088gat, n3087gat, n3086gat,
       n3085gat, n3084gat, n3083gat, n3082gat, n3081gat, n3080gat, n3079gat,
       n3078gat, n3077gat, n3076gat, n3075gat, n3074gat, n3073gat, n3072gat,
       n3071gat, n3070gat, n3069gat, n3068gat, n3067gat, n3066gat, n3065gat} = pi_bits;

      // Use SE from file if you want (normally SE must be 1 for shifting)
      // Some vecs include SI/SE placeholders; we force correct behavior for scan test:
      shift_in(scan_bits);
      capture_one();

      // log scan chain state + outputs
      log_scan_state();
      $fwrite(f_out, "%b\n", PO_bus);
    end

    $fclose(f_vec);
    $fclose(f_state);
    $fclose(f_out);

    $display("Done. Created scan_state.log and outputs.log");
    $finish;
  end

endmodule

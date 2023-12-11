INFO << EOF
⦁ The HTTP driver adapter allows for simple payloads to be expressed simply,
⦁  as well as more advanced forms when necessary.
EOF

tee web_api.yaml << EOF
scenarios:
 default:
  basic: run driver=http

bindings:
 fullname: FullNames();

ops:
 op1: "GET https://google.com/ HTTP/1.1"
 op2:
  op: |
   POST https://httpbin.org/post
   Content-Type: application/json
   Accept: application/json

   {
     "example": "payload",
     "with structural bindings": "{fullname}"
   }
  ok-status: "2[0-9][0-9]"
  
EOF

nb5 web_api.yaml

nb5 web_api.yaml diag=brief

nb5 web_api.yaml diag=all

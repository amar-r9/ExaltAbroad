var a2a_config = a2a_config || {};
a2a_config.vars = {
	vars : [
			"menu_type",
			"static_server",
			"linkname",
			"linkurl",
			"linkname_escape",
			[
					"ssl",
					(document.location.protocol != "http:") ? "https://static.addtoany.com/menu"
							: false ], "show_title", "onclick", "num_services",
			"hide_embeds", "prioritize", "exclude_services", "custom_services",
			[ "templates", {} ], "orientation", [ "track_links", false ],
			[ "track_links_key", "" ], "awesm", "tracking_callback",
			"track_pub", "color_main", "color_bg", "color_border",
			"color_link_text", "color_link_text_hover", "color_arrow",
			"color_arrow_hover", [ "localize", "", 1 ],
			[ "add_services", false, 1 ], "locale", "delay", "icon_color",
			"no_3p", "show_menu", "target" ],
	process : function() {
		var j = a2a_config.vars.vars;
		for (var g = 0, k = "a2a_", d = j.length, c, f, a, l, b; g < d; g++) {
			if (typeof j[g] == "string") {
				c = j[g];
				f = window[k + c];
				l = false
			} else {
				c = j[g][0];
				f = window[k + c];
				a = j[g][1];
				l = true;
				b = j[g][2]
			}
			if (typeof f != "undefined" && f != null) {
				a2a_config[c] = f;
				if (!b) {
					try {
						delete window[k + c]
					} catch (h) {
						window[k + c] = null
					}
				}
			} else {
				if (l && !a2a_config[c]) {
					a2a_config[c] = a
				}
			}
		}
	}
};
a2a_config.vars.process();
a2a_config.static_server = a2a_config.static_server
		|| "https://static.addtoany.com/menu";
var a2a = a2a
		|| {
			total : 0,
			kit_services : [],
			icons_img_url : a2a_config.static_server + "/icons.34.png",
			head_tag : document.getElementsByTagName("head")[0],
			ieo : function() {
				for (var c = -1, a = document.createElement("b");
						a.innerHTML = "<!--[if gt IE " + ++c
								+ "]>1<![endif]-->", +a.innerHTML;) {
				}
				a2a.ieo = function() {
					return c
				};
				return c
			},
			quirks : (document.compatMode && document.compatMode == "BackCompat") ? 1
					: null,
			has_touch : "ontouchend" in window,
			has_pointer : navigator.msPointerEnabled,
			fn_queue : [],
			dom : {
				isReady : false,
				ready : function(c) {
					var h = function() {
						if (!document.body) {
							return setTimeout(a2a.dom.ready(c))
						}
						c();
						a2a.dom.isReady = true
					}, b = function(e) {
						if (document.addEventListener || e.type === "load"
								|| document.readyState === "complete") {
							g();
							h()
						}
					}, g = function() {
						if (document.addEventListener) {
							document.removeEventListener("DOMContentLoaded", b,
									false);
							window.removeEventListener("load", b, false)
						} else {
							document.detachEvent("onreadystatechange", b);
							window.detachEvent("onload", b)
						}
					};
					if (document.readyState === "complete") {
						h()
					} else {
						if (document.addEventListener) {
							document.addEventListener("DOMContentLoaded", b,
									false);
							window.addEventListener("load", b, false)
						} else {
							document.attachEvent("onreadystatechange", b);
							window.attachEvent("onload", b);
							var f = false;
							try {
								f = window.frameElement == null
										&& document.documentElement
							} catch (d) {
							}
							if (f && f.doScroll) {
								(function a() {
									if (!a2a.dom.isReady) {
										try {
											f.doScroll("left")
										} catch (i) {
											return setTimeout(a, 50)
										}
										g();
										h()
									}
								})()
							}
						}
					}
				}
			},
			init : function(b, a, f) {
				var d = a2a.c, a = a || {}, n = {}, m = null, e, c = {}, h, j, i, k, g = location.href, l = function(
						p, q) {
					a2a.total++;
					a2a.n = a2a.total;
					a2a["n" + a2a.n] = p;
					var o = p.node = a2a.set_this_index(p.node), s = document
							.createElement("div"), v, u, t = a2a.getData(o)["a2a-title"], r = a2a
							.getData(o)["a2a-url"];
					if (!o) {
						if (!a2a.c.show_menu) {
							a2a.total--
						}
						return
					}
					if (p.linkname_escape) {
						u = a2a.getByClass("a2a_linkname_escape", o.parentNode)[0]
								|| a2a.getByClass("a2a_linkname_escape",
										o.parentNode.parentNode)[0];
						if (u) {
							p.linkname = u.textContent || u.innerText
						}
					}
					p.linkname = q.linkname = t || p.linkname;
					p.linkurl = q.linkurl = r || p.linkurl;
					if (t) {
						p.linkname_implicit = false
					}
					if (r) {
						p.linkurl_implicit = false
					}
					if ("textContent" in document) {
						s.textContent = p.linkname
					} else {
						s.innerText = p.linkname
					}
					v = s.childNodes[0];
					if (v) {
						p.linkname = v.nodeValue
					}
					delete s;
					if (o.a2a_kit) {
						a2a.kit(p, q)
					} else {
						a2a.button(p)
					}
				};
				a2a.make_once(b);
				for (h in a) {
					d[h] = a[h]
				}
				for (h in d) {
					n[h] = d[h]
				}
				j = d.target;
				if (j) {
					if (typeof j == "string") {
						i = j.substr(0, 1);
						k = j.substr(1);
						if (i == ".") {
							a2a.multi_init(a2a.HTMLcollToArray(a2a.getByClass(
									k, document)), b, a);
							d.target = false;
							return
						} else {
							m = a2a.gEl(k);
							e = m.className;
							if (e.indexOf("a2a_kit") >= 0
									&& e.indexOf("a2a_target") < 0) {
								m = null
							}
						}
					} else {
						m = d.target
					}
				}
				b = (d.menu_type) ? "mail" : b;
				if (b) {
					a2a.type = b;
					d.vars.process()
				}
				c.type = a2a.type;
				c.node = m;
				c.linkname = a2a[c.type].last_linkname = d.linkname
						|| a2a[c.type].last_linkname || document.title
						|| location.href;
				c.linkurl = a2a[c.type].last_linkurl = d.linkurl
						|| a2a[c.type].last_linkurl || location.href;
				c.linkname_escape = d.linkname_escape;
				c.linkname_implicit = (!d.linkname_escape)
						&& ((document.title || g) == c.linkname);
				c.linkurl_implicit = g == c.linkurl;
				c.orientation = d.orientation || false;
				c.track_links = d.track_links || false;
				c.track_links_key = d.track_links_key || "";
				c.track_pub = d.track_pub || false;
				d.linkname = d.linkurl = d.onclick = d.linkname_escape = d.show_title = d.custom_services = d.exclude_services = d.orientation = d.num_services = d.track_pub = d.target = false;
				if (d.track_links == "custom") {
					d.track_links = false;
					d.track_links_key = ""
				}
				a2a.last_type = a2a.type;
				window["a2a" + a2a.type + "_init"] = 1;
				if (a2a.locale && !f) {
					a2a.fn_queue.push((function(o, p) {
						return function() {
							l(o, p)
						}
					})(c, n))
				} else {
					l(c, n);
					d.menu_type = false;
					a2a.init_show()
				}
			},
			init_all : function(a) {
				var b = a2a.unindexed(function(c) {
					if (c.className.indexOf("a2a_follow") >= 0) {
						a2a.init("feed")
					} else {
						a2a.init(a)
					}
				}, true);
				if (!b && a2a.gEl("a2a_menu_container")) {
					a2a.init(a)
				}
			},
			multi_init : function(e, c, a) {
				for (var b = 0, d = e.length; b < d; b++) {
					a.target = e[b];
					a2a.init(c, a)
				}
			},
			button : function(d) {
				var c = d.node, g = d.type, b = a2a
						.gEl("a2a" + g + "_dropdown"), a = "mousedown", f = "mouseup", e;
				if ((!c.getAttribute("onclick") || (c.getAttribute("onclick") + "")
						.indexOf("a2a_") == -1)
						&& (!c.getAttribute("onmouseover") || (c
								.getAttribute("onmouseover") + "")
								.indexOf("a2a_") == -1)) {
					a2a.fast_click.make(c, function(i) {
						a2a.preventDefault(i);
						a2a.stopPropagation(i);
						if (b.style.display == "block") {
							var h = a2a[g].time_open;
							if (a2a[g].onclick || (h && h == "OK")) {
								a2a.toggle_dropdown("none", g)
							} else {
								a2a[g].last_focus = document.activeElement;
								b.focus()
							}
						} else {
							a2a.show_menu(c);
							a2a[g].last_focus = document.activeElement;
							b.focus()
						}
					});
					if (a2a.has_touch) {
						a = "touchstart";
						f = "touchend"
					} else {
						if (a2a.has_pointer) {
							a = "MSPointerDown";
							f = "MSPointerUp"
						}
					}
					a2a.add_event(c, a, a2a.stopPropagation);
					a2a.add_event(c, f, function(h) {
						a2a.stopPropagation(h);
						a2a.touch_used = 1
					});
					if (!a2a[a2a.type].onclick) {
						if (a2a.c.delay) {
							c.onmouseover = function() {
								a2a[a2a.type].over_delay = setTimeout(
										function() {
											a2a.show_menu(c)
										}, a2a.c.delay)
							}
						} else {
							c.onmouseover = function() {
								a2a.show_menu(c)
							}
						}
						c.onmouseout = function() {
							a2a.onMouseOut_delay();
							if (a2a[a2a.type].over_delay) {
								clearTimeout(a2a[a2a.type].over_delay)
							}
						}
					}
				}
				if (c.tagName.toLowerCase() == "a" && a2a.type == "page") {
					c.href = "https://www.addtoany.com/share#url="
							+ encodeURIComponent(d.linkurl)
							+ "&title="
							+ encodeURIComponent(d.linkname).replace(/'/g,
									"%27")
							+ "&description="
							+ encodeURIComponent(a2a.selection()).replace(/'/g,
									"%27")
				}
			},
			kit : function(r, k) {
				var ae = a2a.type, j = {
					behance : {
						name : "Behance",
						icon : "behance",
						url : "https://www.behance.net/${id}"
					},
					facebook : {
						name : "Facebook",
						icon : "facebook",
						url : "https://www.facebook.com/${id}"
					},
					flickr : {
						name : "Flickr",
						icon : "flickr",
						url : "https://www.flickr.com/photos/${id}"
					},
					foursquare : {
						name : "Foursquare",
						icon : "foursquare",
						url : "https://foursquare.com/${id}"
					},
					github : {
						name : "GitHub",
						icon : "github",
						url : "https://github.com/${id}"
					},
					google_plus : {
						name : "Google+",
						icon : "google_plus",
						url : "https://plus.google.com/${id}"
					},
					instagram : {
						name : "Instagram",
						icon : "instagram",
						url : "https://www.instagram.com/${id}"
					},
					linkedin : {
						name : "LinkedIn",
						icon : "linkedin",
						url : "https://www.linkedin.com/in/${id}"
					},
					linkedin_company : {
						name : "LinkedIn",
						icon : "linkedin",
						url : "https://www.linkedin.com/company/${id}"
					},
					pinterest : {
						name : "Pinterest",
						icon : "pinterest",
						url : "https://www.pinterest.com/${id}"
					},
					tumblr : {
						name : "Tumblr",
						icon : "tumblr",
						url : "http://${id}.tumblr.com"
					},
					twitter : {
						name : "Twitter",
						icon : "twitter",
						url : "https://twitter.com/${id}"
					},
					vimeo : {
						name : "Vimeo",
						icon : "vimeo",
						url : "https://vimeo.com/${id}"
					},
					youtube : {
						name : "YouTube",
						icon : "youtube",
						url : "https://www.youtube.com/user/${id}"
					},
					youtube_channel : {
						name : "YouTube Channel",
						icon : "youtube",
						url : "https://www.youtube.com/channel/${id}"
					}
				}, o = function(n, i) {
					var ah, af = C(n, {}), ai = af["a2a-follow"], ag = j[i];
					if (ai && ag) {
						ah = ag.url.replace("${id}", ai)
					}
					return ah || n.href
				}, u = [ "facebook_like", "twitter_tweet", "google_plusone",
						"google_plus_share", "pinterest_pin", "linkedin_share" ], p = a2a.counters.avail, A = function(
						n, ai) {
					if (n != "facebook_like" && n != "twitter_tweet") {
						for (var ag = 0, ah = a2a[ae].services, af = ah.length; ag < af; ag++) {
							if (n == ah[ag][1]) {
								return [ ah[ag][0], ah[ag][2], ah[ag][3],
										ah[ag][4] ]
							}
						}
					}
					if (ai) {
						return false
					}
					return [ n, n ]
				}, C = function(af, aj) {
					for (var ah = 0, n = af.attributes.length, ai, ag = aj; ah < n; ah++) {
						ai = af.attributes[ah];
						if (ai.name && ai.name.substr(0, 5) == "data-") {
							ag[ai.name.substr(5)] = ai.value
						}
					}
					return ag
				}, ad = function() {
					t = r.linkurl = a2a.getData(e)["a2a-url"] || t;
					B = r.linkname = a2a.getData(e)["a2a-title"] || B;
					a2a.linker(this)
				}, H = function(ah, i, af) {
					var ag = {
						node : i,
						service : ah,
						title : B,
						url : t
					}, n = a2a.cbs("share", ag);
					if (typeof n != "undefined") {
						if (n.url) {
							r.linkurl = n.url;
							r.linkurl_implicit = false
						}
						if (n.title) {
							r.linkname = n.title;
							r.linkname_implicit = false
						}
						a2a.linker(i);
						if (n.stop && af) {
							a2a.preventDefault(af)
						}
					}
				}, b = a2a.c.templates, e = r.node, V = a2a.getData(e), ab = e.a2a_follow, N = a2a
						.HTMLcollToArray(e.getElementsByTagName("a")), z = N.length, m = document
						.createElement("div"), s = encodeURIComponent, t = r.linkurl, g = s(
						r.linkurl).replace(/'/g, "%27"), B = r.linkname, l = s(
						r.linkname).replace(/'/g, "%27"), D = V["a2a-icon-color"]
						|| a2a.c.icon_color, F = e.className
						.match(/a2a_kit_size_([\w\.]+)(?:\s|$)/), Q = (F) ? F[1]
						: false, Z = Q + "px", I = "a2a_img a2a_i_", W = {}, f = {}, G = (e.className
						.indexOf("a2a_vertical_style") >= 0) ? true : false;
				if (Q && !isNaN(Q)) {
					a2a.svg_css();
					if (D && D != "unset" && a2a.svg_works()) {
						I = "a2a_svg a2a_w__default a2a_w_";
						W.backgroundColor = D
					} else {
						I = "a2a_svg a2a_s__default a2a_s_"
					}
					e.style.lineHeight = f.height = f.lineHeight = Z;
					f.width = Q * 2 + "px";
					f.fontSize = "16px";
					if (G) {
						f.height = f.lineHeight = (Q / 2) + "px";
						f.fontSize = "10px";
						f.width = Q + "px"
					}
					if (Q != 32) {
						W.backgroundSize = W.height = W.lineHeight = W.width = Z;
						f.borderRadius = W.borderRadius = (Q * 0.14).toFixed()
								+ "px";
						f.fontSize = (parseInt(f.height, 10) + (G ? 4 : 0)) / 2
								+ "px"
					}
				}
				a2a.kit.facebook_like = function() {
					J.href = t;
					J.width = "90";
					J.layout = "button_count";
					J.ref = "addtoany";
					J = C(d, J);
					d.style.width = J.width + "px";
					var af = function() {
						FB.init({
							appId : "0",
							status : false,
							xfbml : true,
							version : "v2.3"
						});
						FB.Event.subscribe("edge.create", function(ag, ah) {
							a2a.GA.track("Facebook Like", "facebook_like", ag,
									"pages", "AddToAny Share/Save Button");
							H("Facebook Like", d)
						})
					}, i = a2a.i18n();
					i = (i) ? i.replace(/-/g, "_") : "en_US";
					if (i.length == 2) {
						i += "_" + i.toUpperCase()
					}
					for (T in J) {
						P += " data-" + T + '="' + J[T] + '"'
					}
					if (!window.fbAsyncInit) {
						window.fbAsyncInit = af;
						v = document.createElement("span");
						v.id = "fb-root";
						document.body.insertBefore(v, document.body.firstChild)
					}
					if (!a2a.kit.facebook_like_script) {
						(function(aj, ag, ak) {
							var ai, ah = aj.getElementsByTagName(ag)[0];
							if (aj.getElementById(ak)) {
								return
							}
							ai = aj.createElement(ag);
							ai.id = ak;
							ai.src = "//connect.facebook.net/" + i + "/sdk.js";
							ah.parentNode.insertBefore(ai, ah)
						}(document, "script", "facebook-jssdk"))
					}
					a2a.kit.facebook_like_script = 1;
					d.innerHTML = '<div class="fb-like"' + P + "></div>";
					try {
						FB.XFBML.parse(d)
					} catch (n) {
					}
				};
				a2a.kit.twitter_tweet = function() {
					J.url = t;
					J.lang = a2a.i18n() || "en";
					J.related = "AddToAny,micropat";
					var ag = b.twitter, i = (ag) ? ag.lastIndexOf("@") : null;
					if (i && i !== -1) {
						i++;
						i = ag.substr(i).split(" ", 1);
						i = i[0].replace(/:/g, "").replace(/\//g, "").replace(
								/-/g, "").replace(/\./g, "").replace(/,/g, "")
								.replace(/;/g, "").replace(/!/g, "");
						J.related = i + ",AddToAny"
					}
					J = C(d, J);
					var af = document.createElement("a");
					af.className = "twitter-share-button";
					for (T in J) {
						af.setAttribute("data-" + T, J[T])
					}
					d.appendChild(af);
					if (!a2a.kit.twitter_tweet_script) {
						(function(al, ai, am) {
							var ah, ak, aj = al.getElementsByTagName(ai)[0];
							if (al.getElementById(am)) {
								return
							}
							ak = al.createElement(ai);
							ak.id = am;
							ak.src = "//platform.twitter.com/widgets.js";
							aj.parentNode.insertBefore(ak, aj);
							window.twttr = window.twttr || (ah = {
								_e : [],
								ready : function(an) {
									ah._e.push(an)
								}
							})
						}(document, "script", "twitter-wjs"))
					}
					a2a.kit.twitter_tweet_script = 1;
					try {
						twttr
								.ready(function(ah) {
									if (!a2a.twitter_bind) {
										ah.events
												.bind(
														"click",
														function(ai) {
															if (ai
																	&& ai.region == "tweet") {
																var aj = (function() {
																	var an = ai.target.src
																			.split("#")[1]
																			|| "";
																	if (an
																			&& an
																					.indexOf("url=") > -1) {
																		var ak = {}, am = an
																				.split("&"), ap = am.length;
																		for (var al = 0; al < ap; al++) {
																			var ao = am[al]
																					.split("=");
																			ak[ao[0]] = ao[1]
																		}
																		return ak
																	} else {
																		return false
																	}
																})();
																if (aj
																		&& aj.url) {
																	a2a.GA
																			.track(
																					"Twitter Tweet",
																					"twitter_tweet",
																					unescape(aj.url),
																					"pages",
																					"AddToAny Share/Save Button");
																	H(
																			"Twitter Tweet",
																			d)
																}
															}
														});
										a2a.twitter_bind = 1
									}
									if (ah.widgets) {
										ah.widgets.load()
									}
								})
					} catch (n) {
					}
				};
				a2a.kit.pinterest_pin = function() {
					J["pin-config"] = "beside";
					J["pin-do"] = "buttonPin";
					J.url = t;
					J = C(d, J);
					var i = document.createElement("a");
					for (T in J) {
						i.setAttribute("data-" + T, J[T])
					}
					if (J["pin-config"] == "beside"
							&& J["pin-do"] == "buttonPin") {
						d.style.width = "76px"
					}
					i.href = "//www.pinterest.com/pin/create/button/?url="
							+ J.url
							+ ((J.media) ? "&media="
									+ encodeURIComponent(J.media) : "")
							+ ((J.description) ? "&description="
									+ encodeURIComponent(J.description)
											.replace(/'/g, "%27") : "");
					a2a.add_event(d, "click", function() {
						a2a.GA.track("Pinterest Pin", "pinterest_pin", t,
								"pages", "AddToAny Share/Save Button");
						H("Pinterest Pin", d)
					});
					d.appendChild(i);
					if (!a2a.kit.pinterest_pin_script) {
						(function(ag) {
							var n = ag.createElement("script"), af = ag
									.getElementsByTagName("script")[0];
							n.type = "text/javascript";
							n.async = true;
							n.src = "//assets.pinterest.com/js/pinit.js";
							af.parentNode.insertBefore(n, af)
						})(document)
					}
					a2a.kit.pinterest_pin_script = 1
				};
				a2a.kit.linkedin_share = function() {
					J.counter = "right";
					J.onsuccess = "a2a.kit.linkedin_share_event";
					J.url = t;
					J = C(d, J);
					for (T in J) {
						P += " data-" + T + '="' + J[T] + '"'
					}
					a2a.kit.linkedin_share_event = function() {
						a2a.GA.track("LinkedIn Share", "linkedin_share", t,
								"pages", "AddToAny Share/Save Button");
						H("LinkedIn Share", d)
					};
					if (!a2a.kit.linkedin_share_script) {
						(function(af) {
							var i = af.createElement("script"), n = af
									.getElementsByTagName("script")[0];
							i.type = "text/javascript";
							i.async = true;
							i.src = "//platform.linkedin.com/in.js";
							n.parentNode.insertBefore(i, n)
						})(document)
					}
					a2a.kit.linkedin_share_script = 1;
					d.innerHTML = '<script type="IN/Share"' + P + "><\/script>"
				};
				a2a.kit.google_plus = function() {
					window.google_plus_cb_a2a = function(n) {
						if (n.state && n.state == "off") {
							return
						}
						a2a.GA.track("Google +1", "google_plusone", n.href,
								"pages", "AddToAny Share/Save Button");
						H("Google +1", d)
					};
					J.href = t;
					J.size = "medium";
					J.annotation = "bubble";
					if (O == "google_plus_share") {
						J.action = "share"
					}
					J = C(d, J);
					var i = a2a.i18n() || "en-US";
					window.___gcfg = window.___gcfg || {
						lang : i
					};
					for (T in J) {
						P += " data-" + T + '="' + J[T] + '"'
					}
					d.innerHTML = '<div class="g-plus'
							+ ((J.action == "share") ? "" : "one")
							+ '" data-callback="google_plus_cb_a2a"' + P
							+ "></div>";
					if (!a2a.kit.google_plus_script) {
						(function(ag) {
							var n = ag.createElement("script"), af = ag
									.getElementsByTagName("script")[0];
							n.type = "text/javascript";
							n.async = true;
							n.src = "https://apis.google.com/js/platform.js";
							af.parentNode.insertBefore(n, af)
						})(document);
						a2a.kit.google_plus_script = 1
					}
				};
				a2a.kit.google_plusone = a2a.kit.google_plus_share = a2a.kit.google_plus;
				for (var X = 0; X < z; X++) {
					var d = N[X], q = d.className, y = q
							.match(/a2a_button_([\w\.]+)(?:\s|$)/), c = (q
							.indexOf("a2a_dd") >= 0), a = (q
							.indexOf("a2a_counter") >= 0), O = (y) ? y[1]
							: false, R = d.childNodes, E = A(O), ac = (ab && j[O]) ? j[O].name
							: E[0], h = "_blank", U = (ab && j[O]) ? j[O].icon
							: E[1], Y = E[2] || {}, L = Y.type, x = E[3], w = false, M = false, v, K, T, P = "", J = {};
					if (c) {
						k.target = d;
						a2a.init(ae, k, 1);
						O = "a2a";
						U = "a2a";
						M = (a) ? 1 : false
					} else {
						if (O == "feed" || O == "print") {
							h = ""
						} else {
							if (a && O && a2a.in_array(O, p)) {
								M = 1
							} else {
								if (O && a2a.in_array(O, u)) {
									a2a.kit[O]();
									w = 1
								}
							}
						}
					}
					if (!O || w) {
						continue
					}
					if (!c) {
						d.target = h;
						if (ab && (j[O] || !A(O, true))) {
							d.href = o(d, O)
						} else {
							if (O == "feed") {
								d.href = r.linkurl
							} else {
								d.href = "/#" + O;
								a2a.add_event(d, "mousedown", ad);
								a2a.add_event(d, "keydown", ad);
								d.rel = "nofollow"
							}
						}
						d.a2a = {};
						d.a2a.customserviceuri = x;
						d.a2a.stype = L;
						d.a2a.linkurl = r.linkurl;
						d.a2a.servicename = ac;
						d.a2a.safename = O;
						if (Y.src) {
							d.a2a.js_src = Y.src
						}
						if (Y.url) {
							d.a2a.url = Y.url
						}
						if (Y.pu) {
							d.a2a.popup = 1
						}
						if (!ab) {
							a2a
									.add_event(
											d,
											"click",
											(function(i, af, ag, n, ah) {
												return function(ak) {
													var al = screen.height, am = 550, ai = 450, aj = "event=service_click&url="
															+ s(location.href)
															+ "&title="
															+ s(document.title
																	|| "")
															+ "&ev_service="
															+ s(i)
															+ "&ev_service_type=kit&ev_menu_type="
															+ ae
															+ "&ev_url="
															+ s(ag)
															+ "&ev_title="
															+ s(n)
																	.replace(
																			/'/g,
																			"%27");
													H(af, ah, ak);
													if (ah.a2a.popup
															&& !a2a
																	.defaultPrevented(ak)) {
														a2a.preventDefault(ak);
														window
																.open(
																		ah.href,
																		"_blank",
																		"toolbar=0,personalbar=0,resizable,scrollbars,status,width=550,height=450,top="
																				+ ((al > ai) ? Math
																						.round(al
																								/ 2
																								- ai
																								/ 2)
																						: 40)
																				+ ",left="
																				+ Math
																						.round(screen.width
																								/ 2
																								- am
																								/ 2))
													}
													a2a.util_frame_post(ae, aj);
													a2a.GA
															.track(af, i, ag,
																	"pages",
																	"AddToAny Share/Save Button")
												}
											})(O, ac, t, B, d))
						}
					}
					if (R.length) {
						for (var aa = 0, S = R.length; aa < S; aa++) {
							if (R[aa].nodeType == 1
									&& R[aa].className != "a2a_label") {
								K = true;
								break
							}
						}
						if (!K) {
							v = document.createElement("span");
							v.className = I + U + " a2a_img_text";
							for (prop_name in W) {
								v.style[prop_name] = W[prop_name]
							}
							d.insertBefore(v, R[0])
						}
					} else {
						v = document.createElement("span");
						v.className = I + U;
						for (prop_name in W) {
							v.style[prop_name] = W[prop_name]
						}
						d.appendChild(v);
						v = document.createElement("span");
						v.className = "a2a_label";
						v.innerHTML = ac
								|| (ae == "feed" ? a2a.c.localize.Subscribe
										: a2a.c.localize.Share);
						d.appendChild(v)
					}
					if (G && Q && Q < 20) {
						M = false
					}
					if (M) {
						v = document.createElement("span");
						v.className = "a2a_count";
						v.a2a = {};
						v.a2a.kit = e;
						for (prop_name in f) {
							v.style[prop_name] = f[prop_name]
						}
						d.appendChild(v);
						if (c) {
							a2a.counters.get("facebook", v, g);
							v.a2a.is_a2a_dd_counter = 1;
							e.a2a_dd_counter = v
						} else {
							a2a.counters.get(O, v, g)
						}
					}
					if (q != "a2a_dd") {
						a2a.kit_services.push(d)
					}
				}
				if (e.className.indexOf("a2a_default_style") >= 0) {
					m.style.clear = "both";
					e.appendChild(m)
				}
			},
			counters : {
				get : function(b, a, g) {
					var d = decodeURIComponent(g), c = a2a.counters[b], f = c.api, j = c.cb, i = a.a2a.is_a2a_dd_counter, h, e;
					h = c[d] = c[d] || {};
					if (h.num) {
						if (i) {
							a2a.counters.sum(a, h.num, b)
						} else {
							a2a.counters.set(a, h.num, b)
						}
						return
					}
					h.queued = h.queued || [];
					h.queued.push(a);
					c.n = c.n || 0;
					c.n++;
					c["cb" + c.n] = function(m) {
						var l = a2a.counters[b].cb(m, a);
						if (typeof l == "undefined") {
							return
						}
						for (var k = 0, n; k < h.queued.length; k++) {
							queued_count_element = h.queued[k];
							h.num = l;
							if (queued_count_element.a2a.is_a2a_dd_counter) {
								a2a.counters.sum(queued_count_element, l, b)
							} else {
								a2a.counters.set(queued_count_element, l, b)
							}
						}
					};
					if (h.queued.length == 1) {
						e = f[0] + g + (f[1] || "&callback") + "=a2a.counters."
								+ b + ".cb" + c.n;
						a2a.dom.ready(function() {
							a2a.loadExtScript(e)
						})
					}
				},
				set : function(c, b, a) {
					c.innerHTML = "<span>" + a2a.counters.format(b) + "</span>";
					if (a != "a2a") {
						a2a.counters.sum(c, b, a)
					}
				},
				sum : function(f, e, a) {
					var c = f.a2a.kit, d = c.a2a_counts_sum || 0, b = c.a2a_counts_summed;
					if (a != "a2a" && (!b || b.indexOf(a) == -1)) {
						d = c.a2a_counts_sum = d + e;
						b = c.a2a_counts_summed = b || [];
						b.push(a)
					}
					if (c.a2a_dd_counter) {
						a2a.counters.set(c.a2a_dd_counter, d, "a2a")
					}
				},
				format : function(b) {
					var a = 1000000, c = 1000;
					if (b > 999) {
						if (b < a) {
							if (b > 10000) {
								b = (b / c).toFixed() + "k"
							} else {
								b = b + "";
								b = b.charAt(0) + "," + b.substring(1)
							}
						} else {
							if (b < 1000000000) {
								b = (b / a).toFixed(b % a > 94999) + "M"
							} else {
								b = "1B+"
							}
						}
					}
					return b
				},
				avail : [ "facebook", "linkedin", "pinterest", "reddit",
						"tumblr" ],
				facebook : {
					api : [
							'https://graph.facebook.com/fql?q=SELECT%20url,%20normalized_url,%20share_count,%20like_count,%20comment_count,%20total_count,commentsbox_count,%20comments_fbid,%20click_count%20FROM%20link_stat%20WHERE%20url="',
							'"&callback' ],
					cb : function(b, a) {
						if (b && b.data && b.data[0]
								&& !isNaN(b.data[0].total_count)) {
							return b.data[0].total_count
						}
					}
				},
				linkedin : {
					api : [ "https://www.linkedin.com/countserv/count/share?url=" ],
					cb : function(b, a) {
						if (b && !isNaN(b.count)) {
							return b.count
						}
					}
				},
				pinterest : {
					api : [ "https://widgets.pinterest.com/v1/urls/count.json?url=" ],
					cb : function(b, a) {
						if (b && !isNaN(b.count)) {
							return b.count
						}
					}
				},
				reddit : {
					api : [ "https://www.reddit.com/api/info.json?url=",
							"&jsonp" ],
					cb : function(f, d) {
						var a = f.data;
						if (f && a && a.children) {
							for (var c = 0, e = [], b = a.children, g; c < b.length; c++) {
								g = b[c].data;
								if (g && !isNaN(g.ups)) {
									e.push(g.ups)
								}
							}
							if (e.length > 0) {
								return Math.max.apply(null, e)
							}
						}
					}
				},
				tumblr : {
					api : [ "https://api.tumblr.com/v2/share/stats?url=" ],
					cb : function(b, a) {
						if (b && b.response && !isNaN(b.response.note_count)) {
							return b.response.note_count
						}
					}
				},
				twitter : {
					api : [ "https://cdn.api.twitter.com/1/urls/count.json?url=" ],
					cb : function(b, a) {
						if (b && !isNaN(b.count)) {
							return b.count
						}
					}
				}
			},
			init_show : function() {
				var b = a2a_config, a = a2a[a2a.type], c = a2a.show_menu;
				if (b.bookmarklet) {
					a.no_hide = 1;
					c()
				}
				if (b.show_menu) {
					a.no_hide = 1;
					c(false, b.show_menu)
				}
			},
			unindexed : function(a, b) {
				function c(d) {
					for (var f = 0, h = d.length, g, e; f < h; f++) {
						g = d[f];
						if ((typeof g.a2a_index === "undefined" || g.a2a_index === "")
								&& g.className.indexOf("a2a_target") < 0
								&& g.parentNode.className.indexOf("a2a_kit") < 0) {
							e = a(g)
						}
						if (e) {
							return e
						} else {
							continue
						}
					}
					return null
				}
				if (b) {
					return (c(a2a.getByClass("a2a_kit", document)) || c(a2a
							.HTMLcollToArray(
									document.getElementsByName("a2a_dd"))
							.concat(a2a.getByClass("a2a_dd", document))))
				} else {
					c(a2a.getByClass("a2a_kit", document).concat(
							a2a.getByClass("a2a_dd", document),
							a2a.HTMLcollToArray(document
									.getElementsByName("a2a_dd"))))
				}
			},
			set_this_index : function(b) {
				var d = a2a.n, c;
				function a(e) {
					if (e.className.indexOf("a2a_kit") >= 0) {
						e.a2a_kit = 1
					} else {
						return false
					}
					if (e.className.indexOf("a2a_follow") >= 0) {
						e.a2a_follow = 1
					}
				}
				if (b) {
					b.a2a_index = d;
					a(b);
					return b
				} else {
					return a2a.unindexed(function(e) {
						e.a2a_index = d;
						a(e);
						return e
					}, true)
				}
			},
			gEl : function(a) {
				return document.getElementById(a)
			},
			getByClass : function(b, c, a) {
				if (document.getElementsByClassName
						&& Object.prototype.getElementsByClassName === document.getElementsByClassName) {
					a2a.getByClass = function(j, h, m) {
						h = h || a2a.gEl("a2a" + a2a.type + "_dropdown");
						var d = h.getElementsByClassName(j), l = (m) ? new RegExp(
								"\\b" + m + "\\b", "i")
								: null, e = [], g;
						for (var f = 0, k = d.length; f < k; f += 1) {
							g = d[f];
							if (!l || l.test(g.nodeName)) {
								e.push(g)
							}
						}
						return e
					}
				} else {
					if (document.evaluate) {
						a2a.getByClass = function(o, n, r) {
							r = r || "*";
							n = n || a2a.gEl("a2a" + a2a.type + "_dropdown");
							var g = o.split(" "), p = "", l = "http://www.w3.org/1999/xhtml", q = (document.documentElement.namespaceURI === l) ? l
									: null, h = [], d, f;
							for (var i = 0, k = g.length; i < k; i += 1) {
								p += "[contains(concat(' ',@class,' '), ' "
										+ g[i] + " ')]"
							}
							try {
								d = document.evaluate(".//" + r + p, n, q, 0,
										null)
							} catch (m) {
								d = document.evaluate(".//" + r + p, n, null,
										0, null)
							}
							while ((f = d.iterateNext())) {
								h.push(f)
							}
							return h
						}
					} else {
						a2a.getByClass = function(r, q, u) {
							u = u || "*";
							q = q || a2a.gEl("a2a" + a2a.type + "_dropdown");
							var h = r.split(" "), t = [], d = (u === "*" && q.all) ? q.all
									: q.getElementsByTagName(u), p, j = [], o;
							for (var i = 0, e = h.length; i < e; i += 1) {
								t
										.push(new RegExp("(^|\\s)" + h[i]
												+ "(\\s|$)"))
							}
							for (var g = 0, s = d.length; g < s; g += 1) {
								p = d[g];
								o = false;
								for (var f = 0, n = t.length; f < n; f += 1) {
									o = t[f].test(p.className);
									if (!o) {
										break
									}
								}
								if (o) {
									j.push(p)
								}
							}
							return j
						}
					}
				}
				return a2a.getByClass(b, c, a)
			},
			HTMLcollToArray : function(f) {
				var b = [], e = f.length;
				for (var d = 0; d < e; d++) {
					b[b.length] = f[d]
				}
				return b
			},
			add_event : function(e, c, b, a) {
				if (e.addEventListener) {
					e.addEventListener(c, b, a);
					return {
						destroy : function() {
							e.removeEventListener(c, b, a)
						}
					}
				} else {
					var d = function() {
						b.call(e, window.event)
					};
					e.attachEvent("on" + c, d);
					return {
						destroy : function() {
							e.detachEvent("on" + c, d)
						}
					}
				}
			},
			fast_click : {
				make : function(b, c, a) {
					this.init();
					this.make = function(e, f, d) {
						new this.FastButton(e, f, d)
					};
					this.make(b, c, a)
				},
				init : function() {
					function a(c, e, f, b) {
						var d = (c.attachEvent) ? function(g) {
							f.handleEvent(window.event, f)
						} : f;
						return a2a.add_event(c, e, d, b)
					}
					this.FastButton = function(c, d, b) {
						this.events = [];
						this.touchEvents = [];
						this.element = c;
						this.handler = d;
						this.useCapture = b;
						if (a2a.has_touch) {
							this.events.push(a(c, "touchstart", this,
									this.useCapture))
						} else {
							if (a2a.has_pointer) {
								c.style.msTouchAction = "manipulation"
							}
						}
						this.events.push(a(c, "click", this, this.useCapture))
					};
					this.FastButton.prototype.destroy = function() {
						for (var b = this.events.length - 1; b >= 0; b -= 1) {
							this.events[b].destroy()
						}
						this.events = this.touchEvents = this.element = this.handler = this.fast_click = null
					};
					this.FastButton.prototype.handleEvent = function(b) {
						switch (b.type) {
						case "touchstart":
							this.onTouchStart(b);
							break;
						case "touchmove":
							this.onTouchMove(b);
							break;
						case "touchend":
							this.onClick(b);
							break;
						case "click":
							this.onClick(b);
							break
						}
					};
					this.FastButton.prototype.onTouchStart = function(b) {
						a2a.stopPropagation(b);
						this.touchEvents.push(a(this.element, "touchend", this,
								this.useCapture));
						this.touchEvents.push(a(document.body, "touchmove",
								this, this.useCapture));
						this.startX = b.touches[0].clientX;
						this.startY = b.touches[0].clientY
					};
					this.FastButton.prototype.onTouchMove = function(b) {
						if (Math.abs(b.touches[0].clientX - this.startX) > 10
								|| Math.abs(b.touches[0].clientY - this.startY) > 10) {
							this.reset()
						}
					};
					this.FastButton.prototype.onClick = function(c) {
						a2a.stopPropagation(c);
						this.reset();
						var b = this.handler.call(this.element, c);
						if (c.type == "touchend") {
							a2a.fast_click.clickbuster.preventGhostClick(
									this.startX, this.startY)
						}
						return b
					};
					this.FastButton.prototype.reset = function() {
						for (var b = this.touchEvents.length - 1; b >= 0; b -= 1) {
							this.touchEvents[b].destroy()
						}
						this.touchEvents = []
					};
					this.clickbuster = {
						coordinates : [],
						preventGhostClick : function(b, c) {
							this.coordinates.push(b, c);
							window.setTimeout(this.pop2, 2500)
						},
						pop2 : function() {
							a2a.fast_click.clickbuster.coordinates.splice(0, 2)
						},
						onClick : function(d) {
							for (var c = 0, b, f, e = a2a.fast_click.clickbuster; c < e.coordinates.length; c += 2) {
								b = e.coordinates[c];
								f = e.coordinates[c + 1];
								if (Math.abs(d.clientX - b) < 25
										&& Math.abs(d.clientY - f) < 25) {
									a2a.stopPropagation(d);
									a2a.preventDefault(d)
								}
							}
						}
					};
					if (a2a.has_touch) {
						a2a.add_event(document, "click",
								this.clickbuster.onClick, true)
					}
				}
			},
			stopPropagation : function(a) {
				if (!a) {
					a = window.event
				}
				a.cancelBubble = true;
				if (a.stopPropagation) {
					a.stopPropagation()
				}
			},
			preventDefault : function(a) {
				a.preventDefault ? a.preventDefault() : (a.returnValue = false)
			},
			defaultPrevented : function(a) {
				return (a.defaultPrevented || a.returnValue === false || typeof a.defaultPrevented === "undefined"
						&& a.getPreventDefault && a.getPreventDefault()) ? true
						: false
			},
			onLoad : function(a) {
				var b = window.onload;
				if (typeof window.onload != "function") {
					window.onload = a
				} else {
					window.onload = function() {
						if (b) {
							b()
						}
						a()
					}
				}
			},
			in_array : function(h, a, b, g, d) {
				if (typeof a == "object") {
					h = h.toLowerCase();
					var c = a.length;
					for (var e = 0, f; e < c; e++) {
						f = (g) ? a[e][g] : a[e];
						f = (d) ? f[d] : f;
						if (b) {
							if (h == f.toLowerCase()) {
								return a[e]
							}
						} else {
							if (h.indexOf(f.toLowerCase()) != -1 && f !== "") {
								return a[e]
							}
						}
					}
				}
				return false
			},
			serialize : function(d, c) {
				var e = [];
				for ( var f in d) {
					if (d.hasOwnProperty(f)) {
						var a = (c) ? c + "[" + f + "]" : f, b = d[f];
						e.push((typeof b == "object") ? a2a.serialize(b, a)
								: encodeURIComponent(a) + "="
										+ encodeURIComponent(b))
					}
				}
				return e.join("&")
			},
			onMouseOut_delay : function() {
				var b = a2a.type, a = a2a.gEl("a2a" + b + "_dropdown").style.display;
				if (a != "none" && a != "" && !a2a[b].find_focused
						&& !a2a[b].service_focused && !a2a.touch_used) {
					a2a[b].out_delay = setTimeout(function() {
						a2a.toggle_dropdown("none", b);
						a2a[b].out_delay = null
					}, 501)
				}
			},
			onMouseOver_stay : function() {
				if (a2a[a2a.type].out_delay) {
					clearTimeout(a2a[a2a.type].out_delay)
				}
			},
			toggle_dropdown : function(a, e) {
				if (a == "none" && a2a[e].no_hide) {
					return
				}
				var b, f = a2a.gEl, i = f("a2a" + e + "_dropdown"), c = f("a2a"
						+ e + "_shim"), d = "mousedown", h = "mouseup", g = document.activeElement;
				i.style.display = a;
				if (c
						&& a2a.getStyle(f("a2a" + e + "_full"), "display") == "none") {
					c.style.display = a
				}
				a2a.onMouseOver_stay();
				if (a == "none") {
					if (!window.addEventListener) {
						b = document.detachEvent;
						b("on" + d, a2a.doc_mousedown_check_scroll);
						b("on" + h, a2a[e].doc_mouseup_toggle_dropdown)
					} else {
						if (a2a.has_touch) {
							d = "touchstart";
							h = "touchend"
						} else {
							if (a2a.has_pointer) {
								d = "MSPointerDown";
								h = "MSPointerUp"
							}
						}
						document.removeEventListener(d,
								a2a.doc_mousedown_check_scroll, false);
						document.removeEventListener(h,
								a2a[e].doc_mouseup_toggle_dropdown, false);
						a2a.touch_used = null
					}
					delete a2a[e].doc_mouseup_toggle_dropdown
				} else {
					if (!a2a[e].onclick) {
						a2a[e].time_open = setTimeout(function() {
							a2a[e].time_open = "OK"
						}, 501)
					}
				}
				if (a2a[e].prev_keydown) {
					document.onkeydown = a2a[e].prev_keydown
				} else {
					document.onkeydown = ""
				}
			},
			getData : function(d) {
				if (!d) {
					return {}
				}
				for (var c = 0, a = d.attributes.length, e, b = {}; c < a; c++) {
					e = d.attributes[c];
					if (e.name && e.name.substr(0, 5) == "data-") {
						b[e.name.substr(5)] = e.value
					}
				}
				return b
			},
			getStyle : function(b, a) {
				return (b.currentStyle) ? b.currentStyle[a.replace(/-(\w)/gi,
						function(d, c) {
							return c.toUpperCase()
						})] : window.getComputedStyle(b, null)
						.getPropertyValue(a)
			},
			getPos : function(b) {
				var c, a = Math.round;
				if (typeof b.getBoundingClientRect == "undefined") {
					return a2a.getPosOld(b)
				} else {
					c = b.getBoundingClientRect()
				}
				return {
					left : a(c.left + a2a.getScrollDocDims("w")),
					top : a(c.top + a2a.getScrollDocDims("h"))
				}
			},
			getPosOld : function(b) {
				var a = 0, c = 0;
				do {
					a += b.offsetLeft || 0;
					c += b.offsetTop || 0;
					b = b.offsetParent
				} while (b);
				return {
					left : a,
					top : c
				}
			},
			getDocDims : function(c) {
				var a = 0, b = 0;
				if (typeof (window.innerWidth) == "number") {
					a = window.innerWidth;
					b = window.innerHeight
				} else {
					if (document.documentElement
							&& (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
						a = document.documentElement.clientWidth;
						b = document.documentElement.clientHeight
					} else {
						if (document.body
								&& (document.body.clientWidth || document.body.clientHeight)) {
							a = document.body.clientWidth;
							b = document.body.clientHeight
						}
					}
				}
				if (c == "w") {
					return a
				} else {
					return b
				}
			},
			getScrollDocDims : function(c) {
				var a = 0, b = 0;
				if (typeof (window.pageYOffset) == "number") {
					a = window.pageXOffset;
					b = window.pageYOffset
				} else {
					if (document.body
							&& (document.body.scrollLeft || document.body.scrollTop)) {
						a = document.body.scrollLeft;
						b = document.body.scrollTop
					} else {
						if (document.documentElement
								&& (document.documentElement.scrollLeft || document.documentElement.scrollTop)) {
							a = document.documentElement.scrollLeft;
							b = document.documentElement.scrollTop
						}
					}
				}
				if (c == "w") {
					return a
				} else {
					return b
				}
			},
			show_more_less : function(b) {
				a2a.onMouseOver_stay();
				var d = a2a.type, e = "a2a" + d, a = a2a.gEl, c = a(e
						+ "_show_more_less");
				a2a.show_full();
				a2a.embeds_fix(true);
				if (b == 0) {
					return false
				}
			},
			focus_find : function() {
				var a = a2a.gEl("a2a" + a2a.type + "_find");
				if (a.parentNode.style.display != "none") {
					a.focus()
				}
			},
			default_services : function(d) {
				var c = d || a2a.type, e = a2a[c].main_services_col_1, a = e.length;
				for (var b = 0; b < a; b++) {
					e[b].style.display = ""
				}
			},
			do_find : function() {
				var f = a2a.type, d = a2a[f].main_services, c = d.length, b = a2a
						.gEl("a2a" + f + "_find").value, g, a = a2a.in_array;
				if (b !== "") {
					g = b.split(" ");
					for (var e = 0, h; e < c; e++) {
						h = d[e].a2a.serviceNameLowerCase;
						if (a(h, g, false)) {
							d[e].style.display = ""
						} else {
							d[e].style.display = "none"
						}
					}
				} else {
					a2a.default_services()
				}
			},
			selection : function() {
				var b, h = document.getElementsByTagName("meta"), a = h.length;
				if (window.getSelection) {
					b = window.getSelection()
				} else {
					if (document.selection) {
						try {
							b = document.selection.createRange()
						} catch (f) {
							b = ""
						}
						b = (b.text) ? b.text : ""
					}
				}
				if (b && b != "") {
					return b
				}
				if (a2a["n" + a2a.n].linkurl == location.href) {
					for (var c = 0, d, g; c < a; c++) {
						d = h[c].getAttribute("name");
						if (d) {
							if (d.toLowerCase() == "description") {
								g = h[c].getAttribute("content");
								break
							}
						}
					}
				}
				return (g) ? g.substring(0, 1200) : ""
			},
			collections : function(c) {
				var b = a2a.gEl, a = a2a[c], d = "a2a" + c;
				a.main_services_col_1 = a2a.getByClass("a2a_i", b(d
						+ "_full_services"), "a");
				a.main_services = a.main_services_col_1;
				a.email_services = a2a.getByClass("a2a_i",
						b(d + "_2_col1", "a"));
				a.all_services = a.main_services.concat(a.email_services)
			},
			cbs : function(g, f) {
				var e = a2a.c.callbacks || [], b = a2a.c.tracking_callback, h = {};
				if (b) {
					if (b[g]) {
						e.push(b)
					} else {
						if (b[0] == g) {
							h[g] = b[1];
							e.push(h)
						} else {
							if (typeof b == "function") {
								h[g] = b;
								e.push(h)
							}
						}
					}
					a2a.c.tracking_callback = null
				}
				for (var d = 0, c = e.length, a; d < c; d++) {
					a = e[d][g];
					if (typeof a == "function") {
						returned = a(f);
						if (g == "ready") {
							a = null
						}
						if (typeof returned != "undefined") {
							return returned
						}
					}
				}
			},
			linker : function(t) {
				var n = location.href, o = document.title || n, r = a2a["n"
						+ (t.parentNode.a2a_index || a2a.n)], d = r.type, h = r.linkurl, b = (r.linkurl_implicit && n != h) ? n
						: h, i = encodeURIComponent(b).replace(/'/g, "%27"), c = r.linkname, j = (r.linkname_implicit && o != c) ? o
						: c, g = encodeURIComponent(j).replace(/'/g, "%27"), e = encodeURIComponent(
						a2a.selection()).replace(/'/g, "%27"), l = (r.track_links && (d == "page" || d == "mail")) ? "&linktrack="
						+ r.track_links
						+ "&linktrackkey="
						+ encodeURIComponent(r.track_links_key)
						: "", p = t.a2a.customserviceuri || false, s = t.a2a.safename, q = t.a2a.stype, k = t.a2a.js_src, f = t.a2a.url, m, a = a2a.c.templates;
				if (q && q == "js" && k) {
					t.target = "";
					m = (k.substr(0, 11) == "javascript:") ? k
							: 'javascript:a2a.loadExtScript("' + k + '")'
				} else {
					if (f && (s != "email" || s == "email" && a2a.has_touch)
							&& !a[s] && !l) {
						t.target = "";
						m = f.replace("${link}", i).replace("${link_noenc}", h)
								.replace("${link_nohttp}",
										h.replace(/^https?:\/\//, "")).replace(
										"${title}", g)
					} else {
						if (p && p != "undefined") {
							m = p.replace(/A2A_LINKNAME_ENC/, g).replace(
									/A2A_LINKURL_ENC/, i).replace(
									/A2A_LINKNOTE_ENC/, e)
						}
					}
				}
				t.href = m
						|| "http://www.addtoany.com/add_to/"
						+ s
						+ "?linkurl="
						+ i
						+ "&linkname="
						+ g
						+ l
						+ ((a2a.c.awesm) ? "&linktrack_parent=" + a2a.c.awesm
								: "")
						+ ((s == "twitter" && a[s]) ? "&template="
								+ encodeURIComponent(a[s]) : "")
						+ (((s == "email" || q && q == "email") && a.email) ? "&"
								+ a2a.serialize({
									template : a.email
								})
								: "") + ((d == "feed") ? "&type=feed" : "")
						+ "&linknote=" + e;
				return true
			},
			show_full : function() {
				var g = a2a.type, a = "a2a" + g, h = a2a.gEl, i = a2a.getByClass, b = h(a
						+ "_find"), d = h(a + "_overlay"), c = h(a + "_shim"), f = h(a
						+ "_full"), e = i("a2a_full_header", f)[0], k = h(a
						+ "_full_services"), j = i("a2a_full_footer", f)[0];
				if (f.classList && a2a.getStyle(d, "transition-duration")) {
					f.classList.add("a2a_starting");
					d.classList.add("a2a_starting")
				}
				f.style.display = d.style.display = "block";
				if (c) {
					c.style.display = "block"
				}
				if (f.classList) {
					setTimeout(function() {
						f.classList.remove("a2a_starting");
						d.classList.remove("a2a_starting")
					}, 1)
				}
				k.style.cssText = "height:calc(10px)";
				if (!!k.style.height.length) {
					k.style.height = "calc(100% - "
							+ (e.offsetHeight + j.offsetHeight) + "px)"
				}
				f.focus();
				a2a.show_full.key_listener = a2a
						.add_event(
								document,
								"keydown",
								function(n) {
									var n = n || window.event, m = n.which
											|| n.keyCode, l = document.activeElement;
									if (m == 27 && b != l) {
										a2a.hide_full(g)
									} else {
										if (m > 40 && m < 91 && b != l) {
											b.focus()
										}
									}
								})
			},
			hide_full : function(f) {
				var a = a2a.gEl, e = "a2a" + f, d = a(e + "_full"), b = a(e
						+ "_overlay");
				function c() {
					b.style.display = d.style.display = "none";
					shim = a(e + "_shim");
					if (shim) {
						if (a2a.getStyle(a(e + "_dropdown"), "display") == "none") {
							shim.style.display = "none"
						} else {
							a2a.embeds_fix();
							a(e + "_show_more_less").focus()
						}
					}
					a2a.show_full.key_listener.destroy();
					if (b.addEventListener) {
						b.removeEventListener("transitionend", c, false)
					}
				}
				if (d.classList && a2a.getStyle(b, "transition-duration")) {
					b.addEventListener("transitionend", c, false);
					d.classList.add("a2a_starting");
					b.classList.add("a2a_starting")
				} else {
					c()
				}
			},
			show_menu : function(p, f) {
				if (p) {
					a2a.n = p.a2a_index
				} else {
					a2a.n = a2a.total;
					a2a[a2a.type].no_hide = 1
				}
				var q = a2a["n" + a2a.n], h = a2a.type = q.type, e = "a2a" + h, s = a2a
						.gEl(e + "_dropdown"), m = "mousedown", r = "mouseup";
				a2a.gEl(e + "_title").value = q.linkname;
				a2a.toggle_dropdown("block", h);
				var n = [ s.clientWidth, s.clientHeight ], j = a2a
						.getDocDims("w"), g = a2a.getDocDims("h"), b = a2a
						.getScrollDocDims("w"), c = a2a.getScrollDocDims("h"), t, a, d, l;
				if (p) {
					t = p.getElementsByTagName("img")[0];
					if (t) {
						a = a2a.getPos(t);
						d = t.clientWidth;
						l = t.clientHeight
					} else {
						a = a2a.getPos(p);
						d = p.offsetWidth;
						l = p.offsetHeight
					}
					if (a.left - b + n[0] + d > j) {
						a.left = a.left - n[0] + d - 8
					}
					if (q.orientation == "up"
							|| (q.orientation != "down"
									&& a.top - c + n[1] + l > g && a.top > n[1])) {
						a.top = a.top - n[1] - l
					}
					s.style.left = ((a.left < 0) ? 0 : a.left) + 2 + "px";
					s.style.top = a.top + l + "px";
					a2a.embeds_fix()
				} else {
					if (!f) {
						f = {}
					}
					s.style.position = f.position || "absolute";
					s.style.left = f.left || (j / 2 - n[0] / 2 + "px");
					s.style.top = f.top || (g / 2 - n[1] / 2 + "px")
				}
				if (!a2a[h].doc_mouseup_toggle_dropdown && !a2a[h].no_hide) {
					a2a.doc_mousedown_check_scroll = function() {
						a2a.last_scroll_pos = a2a.getScrollDocDims("h")
					};
					a2a[h].doc_mouseup_toggle_dropdown = (function(o) {
						return function() {
							if (a2a.last_scroll_pos == a2a
									.getScrollDocDims("h")) {
								if (a2a[h].last_focus) {
									a2a[h].last_focus.focus()
								}
								a2a.toggle_dropdown("none", o)
							}
						}
					})(h);
					if (!window.addEventListener) {
						document.attachEvent("on" + m,
								a2a.doc_mousedown_check_scroll);
						document.attachEvent("on" + r,
								a2a[h].doc_mouseup_toggle_dropdown)
					} else {
						if (a2a.has_touch) {
							m = "touchstart";
							r = "touchend"
						} else {
							if (a2a.has_pointer) {
								m = "MSPointerDown";
								r = "MSPointerUp"
							}
						}
						document.addEventListener(m,
								a2a.doc_mousedown_check_scroll, false);
						document.addEventListener(r,
								a2a[h].doc_mouseup_toggle_dropdown, false)
					}
				}
				a2a.svg_css();
				var i = encodeURIComponent, k = "event=menu_show&url="
						+ i(location.href) + "&title="
						+ i(document.title || "") + "&ev_menu_type=" + h;
				a2a.util_frame_post(h, k)
			},
			embeds_fix : function(d) {
				var g = a2a.gEl, f = a2a.type, a = "a2a" + f, b = g(a + "_shim"), i, h, j, c, e;
				if (!b) {
					b = document.createElement("iframe");
					b.className = "a2a_shim";
					b.id = a + "_shim";
					b.title = "AddToAny Shim";
					b.setAttribute("frameBorder", "0");
					b.setAttribute("src", 'javascript:"";');
					b.tabIndex = -1;
					document.body.appendChild(b)
				}
				if (d) {
					b.style.left = b.style.top = "0";
					b.style.width = "";
					b.style.height = ""
				} else {
					i = g(a + "_dropdown");
					h = parseInt(i.style.left);
					j = parseInt(i.style.top);
					c = (i.clientWidth || i.offsetWidth);
					e = (i.clientHeight || i.offsetHeight);
					b.style.left = h + "px";
					b.style.top = j + "px";
					b.style.width = c + "px";
					b.style.height = e + "px"
				}
			},
			bmBrowser : function(a) {
				var c = a2a.c.localize.Bookmark, b = a2a["n" + a2a.n];
				if (document.all) {
					if (a == 1) {
						c = a2a.c.localize.AddToYourFavorites
					} else {
						window.external.AddFavorite(b.linkurl, b.linkname)
					}
				} else {
					if (a != 1) {
						a2a.gEl("a2apage_note_BROWSER").innerHTML = '<div class="a2a_note_note">'
								+ a2a.c.localize.BookmarkInstructions
								+ "</div>"
					}
				}
				if (a == 1) {
					return c
				}
			},
			loadExtScript : function(c, e, d) {
				var b = document.createElement("script");
				b.charset = "UTF-8";
				b.src = c;
				document.body.appendChild(b);
				if (typeof e == "function") {
					var a = setInterval(function() {
						var f = false;
						try {
							f = e.call()
						} catch (g) {
						}
						if (f) {
							clearInterval(a);
							d.call()
						}
					}, 100)
				}
			},
			track : function(b) {
				var a = new Image(1, 1);
				a.src = b;
				a.width = 1;
				a.height = 1
			},
			GA : function(d) {
				var b = window, a = a2a.type, c = function() {
					if (typeof urchinTracker == "function") {
						a2a.GA.track = function(i, f, h, e, g) {
							urchinTracker("/addtoany.com/" + e);
							urchinTracker("/addtoany.com/" + e + "/"
									+ (h || a2a["n" + a2a.n].linkurl));
							urchinTracker("/addtoany.com/services/" + f)
						}
					} else {
						if (typeof pageTracker == "object") {
							a2a.GA.track = function(i, f, h, e, g) {
								if (a != "feed") {
									pageTracker._trackSocial("AddToAny", i,
											(h || a2a["n" + a2a.n].linkurl))
								}
								pageTracker._trackEvent(g, i, (h || a2a["n"
										+ a2a.n].linkurl))
							}
						} else {
							if (typeof _gaq == "object") {
								a2a.GA.track = function(i, f, h, e, g) {
									if (a != "feed") {
										_gaq
												.push([
														"_trackSocial",
														"AddToAny",
														i,
														(h || a2a["n" + a2a.n].linkurl) ])
									}
									_gaq.push([ "_trackEvent", g, i,
											(h || a2a["n" + a2a.n].linkurl) ])
								}
							} else {
								if (typeof GoogleAnalyticsObject == "string") {
									a2a.GA.track = function(i, f, h, e, g) {
										if (a != "feed") {
											b[GoogleAnalyticsObject]
													(
															"send",
															"social",
															"AddToAny",
															i,
															{
																page : (h || a2a["n"
																		+ a2a.n].linkurl)
															})
										}
										b[GoogleAnalyticsObject]("send",
												"event", g, i, (h || a2a["n"
														+ a2a.n].linkurl))
									}
								} else {
									return
								}
							}
						}
					}
				};
				a2a.GA.track = function() {
				};
				if (d || /loaded|complete/.test(document.readyState)) {
					c()
				} else {
					a2a.onLoad(c)
				}
			},
			add_services : function() {
				var k = a2a.type, l = a2a.gEl, e = parseInt(a2a[k].num_services), n = l("a2a"
						+ k + "_full_services"), a = l("a2a" + k
						+ "_mini_services"), h;
				if (a2a[k].custom_services) {
					var j = a2a[k].custom_services, b = j.length, d = a2a.make_service, o = 0;
					j.reverse();
					for (var g = 0, f; g < b; g++) {
						if (j[g]) {
							o += 1;
							f = d(j[g][0], j[g][0].replace(" ", "_"), false,
									{}, j[g][1], j[g][2]);
							n.insertBefore(f, n.firstChild);
							f = d(j[g][0], j[g][0].replace(" ", "_"), false,
									{}, j[g][1], j[g][2]);
							a.insertBefore(f, a.firstChild)
						}
					}
				}
				if (k == "page" && a2a.c.add_services) {
					var j = a2a.c.add_services, b = j.length, d = a2a.make_service, o = 0, m = a2a.c.ssl;
					for (var g = 0; g < b; g++) {
						if (j[g]) {
							o += 1;
							if (m) {
								j[g].icon = false
							}
							f = d(j[g].name, j[g].safe_name, false, {}, false,
									j[g].icon);
							n.insertBefore(f, n.firstChild);
							f = d(j[g].name, j[g].safe_name, false, {}, false,
									j[g].icon);
							a.insertBefore(f, a.firstChild)
						}
					}
				}
				h = a2a.getByClass("a2a_i", a, "a");
				if (h.length > e) {
					for (var g = 0, c = h.length; g < (c - e); g++) {
						a.removeChild(a.lastChild)
					}
				}
			},
			util_frame_make : function(f) {
				var h = document.createElement("iframe"), d = document
						.createElement("div"), e = encodeURIComponent, c = (document.referrer) ? e(document.referrer)
						: "", b = e(location.href), a = e(document.title || ""), g = navigator.browserLanguage
						|| navigator.language;
				h.id = "a2a" + f + "_sm_ifr";
				h.width = h.height = 1;
				h.style.width = h.style.height = d.style.width = d.style.height = "1px";
				h.style.top = h.style.left = h.frameborder = h.style.border = 0;
				h.style.position = d.style.position = "absolute";
				h.style.zIndex = d.style.zIndex = 100000;
				h.title = "AddToAny Utility Frame";
				h.setAttribute("transparency", "true");
				h.setAttribute("allowTransparency", "true");
				h.setAttribute("frameBorder", "0");
				h.src = "https://static.addtoany.com/menu/sm13.html#type=" + f
						+ "&event=load&url=" + b + "&referrer=" + c;
				d.style.top = "0";
				d.style.visibility = "hidden";
				a2a.gEl("a2a" + f + "_dropdown").parentNode.insertBefore(d,
						null);
				d.insertBefore(h, null)
			},
			util_frame_listen : function(a) {
				a2a.util_frame_make(a);
				if (window.postMessage && !a2a[a].message_event) {
					a2a
							.add_event(
									window,
									"message",
									function(g) {
										if (g.origin
												.substr(g.origin.length - 13) == ".addtoany.com") {
											var f = g.data.split("="), d = f[0]
													.substr(4), c = f[1], b = d
													.substr(0, 4);
											if (d == b + "_services") {
												c = (c != "") ? c.split(",")
														: false;
												a2a.top_services(c, b,
														" a2a_sss");
												a2a.collections(b);
												a2a.default_services(b)
											}
											a2a.gEl("a2a" + b + "_sm_ifr").style.display = "none"
										}
									});
					a2a[a].message_event = 1
				}
			},
			util_frame_post : function(a, b) {
				if (window.postMessage) {
					a2a.gEl("a2a" + a + "_sm_ifr").contentWindow.postMessage(b,
							"*")
				}
			},
			fix_icons : function() {
				var j = a2a.ieo(), a = a2a.getByClass("a2a_s_a2a", document), a = a[0], e = a2a.fix_icons.tryNum || 0;
				if (j && j < 9) {
					if (a && !a.a2aFixed
							&& !a.currentStyle.backgroundImage.split('"')[1]
							&& e < 999) {
						a2a.fix_icons.tryNum = e + 1;
						return setTimeout(a2a.fix_icons, 99)
					}
					for (var c = 0, h, f, d, g, k = a2a.getByClass("a2a_svg",
							document), b = k.length; c < b; c++) {
						g = k[c];
						h = g.currentStyle;
						f = h.backgroundImage.split('"')[1];
						if (!g.a2aFixed && f) {
							d = new Image();
							d.style.border = 0;
							d.style.height = h.height;
							d.style.width = h.width;
							d.src = f;
							g.style.background = "none";
							g.insertBefore(d, g.firstChild)
						}
						g.a2aFixed = 1
					}
				} else {
					fix_icons = function() {
					}
				}
			},
			arrange_services : function() {
				var b = a2a.type, a = a2a.c.prioritize, c;
				if (a) {
					a2a.top_services(a, b)
				}
				a2a.add_services()
			},
			top_services : function(r, c, s) {
				var l = c || a2a.type, p = a2a.in_array, e = a2a.make_service, j = parseInt(a2a[l].num_services), b = a2a
						.gEl("a2a" + l + "_full_services"), q = a2a.gEl("a2a"
						+ l + "_mini_services"), a = a2a.getByClass("a2a_i", b,
						"a"), d = a2a.getByClass("a2a_i", q, "a"), g = [];
				if (r) {
					for (var o = r.length - 1, s = s; o > -1; o--) {
						var m = r[o], f = p(m, a, true, "a2a", "safename");
						if (f) {
							if (s) {
								f.className = f.className + s
							}
							b.insertBefore(f, b.firstChild);
							g.push(f)
						}
					}
					if (g.length > 0) {
						for (var o = 0, s = s, u, h, k; o < g.length; o++) {
							if (u = p(g[o].a2a.safename, d, true, "a2a",
									"safename")) {
								k = u
							} else {
								h = g[o].a2a;
								k = e(h.servicename, h.safename, h.serviceIcon,
										{
											src : h.js_src,
											url : h.url,
											type : h.serviceType,
											pu : h.popup
										})
							}
							if (s) {
								k.className = k.className + s
							}
							q.insertBefore(k, q.firstChild)
						}
						d = a2a.getByClass("a2a_i", q, "a");
						if (d.length > j) {
							for (var o = 0, n = d.length; o < (n - j); o++) {
								q.removeChild(q.lastChild)
							}
						}
					}
				}
			},
			css : function() {
				var g, p, v = a2a.c, i = v.css = document
						.createElement("style"), k = v.color_main || "EEE", f = v.color_bg
						|| "FFF", j = v.color_border || "CCC", c = v.color_link_text
						|| "0166FF", h = v.color_link_text_hover || "2A2A2A", m = v.color_link_text_hover
						|| "2A2A2A", l = v.color_link_text || "2A2A2A", q = (k
						.toLowerCase() == "ffffff") ? "EEE" : k, b = v.color_link_text
						|| "2A2A2A", e = v.color_border || j, x = ".a2a_", d = "{background-position:0 ", a = "px!important}", z = x
						+ "i_", y = a + z, w = x + "menu", u = x + "tab", t = "border", s = "background-color:", r = "color:", o = "margin:", n = "padding:";
				g = ""
						+ w
						+ ","
						+ w
						+ " * {-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;float:none;"
						+ o
						+ "0;"
						+ n
						+ "0;position: static;height:auto;width:auto;}"
						+ w
						+ " {"
						+ t
						+ "-radius: 6px;display:none;direction:ltr;background:#"
						+ f
						+ ';font: 16px sans-serif-light, "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Arial, Helvetica, "Liberation Sans", sans-serif;'
						+ r
						+ "#000;line-height:12px;"
						+ t
						+ ": 1px solid #"
						+ j
						+ ";vertical-align:baseline;outline: 0; overflow:hidden;}"
						+ x
						+ "mini {min-width:200px;position:absolute;width: 300px;z-index:9999997;}"
						+ x
						+ "overlay {display: none;background: #"
						+ j
						+ '; _height: expression( ((e=document.documentElement.clientHeight)?e:document.body.clientHeight)+"px" ); _width: expression( ((e=document.documentElement.clientWidth)?e:document.body.clientWidth)+"px" ); filter: alpha(opacity=50); opacity: .7;position: fixed;_position: absolute; top: 0;right: 0;left: 0;bottom: 0;z-index: 9999998;-webkit-tap-highlight-'
						+ r
						+ " rgba(0,0,0,0);transition: opacity .14s;}"
						+ x
						+ "full {background: #"
						+ f
						+ ';height: auto;height: calc(320px);top: 15%;_top: expression(40+((e=document.documentElement.scrollTop)?e:document.body.scrollTop)+"px"); left: 50%;margin-left: -320px; position: fixed;_position: absolute; text-align: center;width: 640px;z-index: 9999999;     transition: transform .14s, opacity .14s;}'
						+ x
						+ "full_header,"
						+ x
						+ "full_services,"
						+ x
						+ "full_footer {"
						+ t
						+ ": 0;"
						+ o
						+ " 0;"
						+ n
						+ " 12px;box-sizing: "
						+ t
						+ "-box;}"
						+ x
						+ "full_header {padding-bottom: 8px;}"
						+ x
						+ "full_services {height: 280px; overflow-y: scroll;"
						+ n
						+ " 0 12px;-webkit-overflow-scrolling: touch;}"
						+ x
						+ "full_services "
						+ x
						+ "i {display: inline-block;float: none;width: 181px;width: calc(33.334% - 18px);}div"
						+ x
						+ "full_footer {font-size: 12px;text-align: center;"
						+ n
						+ " 8px 14px;}div"
						+ x
						+ "full_footer a,div"
						+ x
						+ "full_footer a:visited {display: inline;font-size: 12px;line-height:14px;"
						+ n
						+ " 8px 14px; }div"
						+ x
						+ "full_footer a:hover,div"
						+ x
						+ "full_footer a:focus {background: none;"
						+ t
						+ ": 0;"
						+ r
						+ " #"
						+ c
						+ ";}div"
						+ x
						+ "full_footer a span"
						+ x
						+ "s_a2a,div"
						+ x
						+ "full_footer a span"
						+ x
						+ "w_a2a {background-size: 14px;"
						+ t
						+ "-radius: 3px;display: inline-block;height:14px;line-height:14px;"
						+ o
						+ " 0 3px 0 0;vertical-align: top;*vertical-align: middle; width:14px;}@media print {"
						+ w
						+ ","
						+ x
						+ "overlay {visibility: hidden;}}@keyframes a2aFadeIn {from { opacity: 0; }  to { opacity: 1; }}"
						+ x
						+ "starting {opacity: 0;}"
						+ x
						+ "starting"
						+ x
						+ "full {transform: scale(.8);}@media (max-width: 639px) {"
						+ x
						+ "full {"
						+ t
						+ "-radius: 0;top: 15%;left: 0;margin-left: auto;width: 100%;}}@media (min-width: 318px) and (max-width: 437px) {"
						+ x
						+ "full "
						+ x
						+ "full_services "
						+ x
						+ "i {width: calc(50% - 18px);}}@media (max-width: 317px) {"
						+ x
						+ "full "
						+ x
						+ "full_services "
						+ x
						+ "i {width: calc(100% - 18px);}}@media (max-height: 436px) {"
						+ x
						+ "full {bottom: 40px;height: auto;top: 40px;}}"
						+ w
						+ " a {"
						+ r
						+ "#"
						+ c
						+ ';text-decoration:none;font: 16px sans-serif-light, "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Arial, Helvetica, "Liberation Sans", sans-serif;line-height:14px;height:auto;width:auto;outline:none;-moz-outline:none;}'
						+ w
						+ " a:visited{"
						+ r
						+ "#"
						+ c
						+ "}"
						+ w
						+ " a:hover,"
						+ w
						+ " a:active,"
						+ w
						+ " a:focus{"
						+ r
						+ " #"
						+ h
						+ ";"
						+ t
						+ "-"
						+ r
						+ " #"
						+ k
						+ ";"
						+ t
						+ "-style: solid;"
						+ s
						+ " #"
						+ k
						+ ";text-decoration: none;}"
						+ w
						+ " span"
						+ x
						+ "s_find {background-size: 24px;height:24px;left: 8px;position:absolute;top: 7px;width:24px;}"
						+ w
						+ " span"
						+ x
						+ "s_find svg {"
						+ s
						+ " #"
						+ f
						+ ";}"
						+ w
						+ " span"
						+ x
						+ "s_find svg path {fill: #"
						+ e
						+ ";}#a2a_menu_container{display:inline-block} #a2a_menu_container{_display:inline} "
						+ w
						+ "_title_container {"
						+ n
						+ " 6px 8px;}"
						+ w
						+ "_find_container {"
						+ t
						+ ": 1px solid #"
						+ e
						+ ";"
						+ t
						+ "-radius: 6px;"
						+ n
						+ " 2px 24px 2px 0;position: relative;text-align: left;}"
						+ x
						+ "cols_container "
						+ x
						+ "col1{overflow-x:hidden;overflow-y:auto;-webkit-overflow-scrolling:touch}"
						+ w
						+ " input, "
						+ w
						+ ' input[type="text"]{display:block;background-image:none;box-shadow:none;line-height:100%;'
						+ o
						+ "0;overflow:hidden;"
						+ n
						+ "0;-moz-box-shadow:none;-webkit-box-shadow:none;-webkit-appearance:none} "
						+ w
						+ "_title_container input"
						+ w
						+ "_title {"
						+ s
						+ " #"
						+ f
						+ ";"
						+ t
						+ ": 0;"
						+ r
						+ " #"
						+ b
						+ ";font: inherit;"
						+ o
						+ " 0;"
						+ n
						+ " 0;width: 99%;}"
						+ w
						+ "_find_container input"
						+ w
						+ "_find {"
						+ s
						+ " transparent;_"
						+ s
						+ " #"
						+ f
						+ ";"
						+ t
						+ ": 0;"
						+ r
						+ " #"
						+ b
						+ ";font: inherit;font-size: 16px;height: 28px;line-height: 20px;left: 38px;outline: 0;"
						+ n
						+ " 2px 0;position: relative;width: 99%;}"
						+ ((typeof document.body.style.maxHeight != "undefined") ? ""
								+ x + "clear{clear:both}"
								: ""
										+ x
										+ "clear{clear:both;height:0;width:0;line-height:0;font-size:0}")
						+ " "
						+ x
						+ "img {background:url("
						+ a2a.icons_img_url
						+ ");"
						+ t
						+ ":0;line-height:16px}"
						+ x
						+ "img,"
						+ x
						+ "svg {background-repeat:no-repeat;display:block;overflow:hidden;}"
						+ x
						+ "img{height:16px;line-height:16px;width:16px;}"
						+ x
						+ "svg{height:32px;line-height:32px;width:32px;}a"
						+ x
						+ "i,i"
						+ x
						+ "i{display:block;float:left;"
						+ t
						+ ":1px solid #"
						+ f
						+ ";line-height:24px;"
						+ n
						+ "6px 8px;text-align:left;white-space:nowrap;overflow: hidden;text-overflow: ellipsis;width:132px;}a"
						+ x
						+ "i span,a"
						+ x
						+ "more span {display: inline-block;overflow: hidden;vertical-align: top;*vertical-align: middle; }a"
						+ x
						+ "i "
						+ x
						+ "img,a"
						+ x
						+ "i "
						+ x
						+ "svg {"
						+ o
						+ " 0 6px 0 0;}a"
						+ x
						+ "i "
						+ x
						+ "svg,a"
						+ x
						+ "more "
						+ x
						+ "svg {background-size: 24px;height:24px;line-height:24px;width:24px;}a"
						+ x
						+ "sss:hover {"
						+ t
						+ "-left: 1px solid #"
						+ j
						+ ";}a"
						+ w
						+ "_show_more_less{"
						+ t
						+ "-bottom:1px solid #"
						+ f
						+ ";"
						+ t
						+ "-left:0;"
						+ t
						+ "-right:0;line-height:24px;"
						+ o
						+ "6px 0 0;"
						+ n
						+ "6px}a"
						+ w
						+ "_show_more_less span{display:inline-block;height:24px;"
						+ o
						+ "0 6px 0 0;} "
						+ x
						+ "kit "
						+ x
						+ "svg { background-repeat: repeat; }"
						+ x
						+ "default_style a{float:left;line-height:16px;"
						+ n
						+ "0 2px}"
						+ x
						+ "default_style a:hover "
						+ x
						+ "img,"
						+ x
						+ "default_style a:hover "
						+ x
						+ "svg,"
						+ x
						+ "floating_style a:hover "
						+ x
						+ "img,"
						+ x
						+ "floating_style a:hover "
						+ x
						+ "svg {opacity: .7;}"
						+ x
						+ "default_style "
						+ x
						+ "count,"
						+ x
						+ "default_style "
						+ x
						+ "svg,"
						+ x
						+ "floating_style "
						+ x
						+ "svg,"
						+ x
						+ "vertical_style "
						+ x
						+ "count,"
						+ w
						+ " "
						+ x
						+ "svg {"
						+ t
						+ "-radius:4px ;}"
						+ x
						+ "default_style "
						+ x
						+ "img, "
						+ x
						+ "default_style "
						+ x
						+ "dd, "
						+ x
						+ "default_style "
						+ x
						+ "svg,"
						+ x
						+ "default_style "
						+ x
						+ "counter img { float: left;}"
						+ x
						+ "default_style "
						+ x
						+ "img_text{margin-right:4px}"
						+ x
						+ "default_style "
						+ x
						+ "divider{"
						+ t
						+ "-left:1px solid #000;display:inline;float:left;height:16px;line-height:16px;"
						+ o
						+ "0 5px}"
						+ x
						+ "kit a{cursor:pointer}"
						+ x
						+ "floating_style { "
						+ s
						+ " #fff; "
						+ t
						+ "-radius: 6px; "
						+ n
						+ " 4px; position: fixed; z-index: 9999995;    animation: a2aFadeIn .2s ease-in;}"
						+ x
						+ "vertical_style a { clear: left;display: block;overflow: hidden;"
						+ n
						+ " 4px;text-decoration: none; }"
						+ x
						+ "floating_style"
						+ x
						+ "default_style { bottom: 0; }"
						+ x
						+ "floating_style"
						+ x
						+ "default_style a { "
						+ n
						+ " 4px; }"
						+ x
						+ "count {"
						+ s
						+ " #fff;"
						+ t
						+ ": 1px solid #ccc;box-sizing: "
						+ t
						+ "-box;"
						+ r
						+ " #2a2a2a;display: block;float: left;font: 12px Arial,Helvetica,sans-serif;height: 16px;margin-left: 4px;position: relative;text-align: center;width: 50px;}"
						+ x
						+ "count:before,"
						+ x
						+ "count:after {"
						+ t
						+ ": solid transparent;"
						+ t
						+ '-width: 4px 4px 4px 0;content: "";height: 0;left: 0;line-height: 0;'
						+ o
						+ " -4px 0 0 -4px;position: absolute;top: 50%;width: 0;}"
						+ x
						+ "count:before {"
						+ t
						+ "-right-"
						+ r
						+ " #ccc;}"
						+ x
						+ "count:after {"
						+ t
						+ "-right-"
						+ r
						+ " #fff;margin-left: -3px;}"
						+ x
						+ "count span {    animation: a2aFadeIn .14s ease-in;}"
						+ x
						+ "vertical_style "
						+ x
						+ "counter img {display: block;}"
						+ x
						+ "vertical_style "
						+ x
						+ "count {float: none;margin-left: 0;margin-top: 6px; }"
						+ x
						+ "vertical_style "
						+ x
						+ "count:before,"
						+ x
						+ "vertical_style "
						+ x
						+ "count:after {"
						+ t
						+ ": solid transparent;"
						+ t
						+ '-width: 0 4px 4px 4px;content: "";height: 0;left: 50%;line-height: 0;'
						+ o
						+ " -4px 0 0 -4px;position: absolute;top: 0;width: 0;}"
						+ x
						+ "vertical_style "
						+ x
						+ "count:before {"
						+ t
						+ "-bottom-"
						+ r
						+ " #ccc;}"
						+ x
						+ "vertical_style "
						+ x
						+ "count:after {"
						+ t
						+ "-bottom-"
						+ r
						+ " #fff;margin-top: -3px;}"
						+ x
						+ "nowrap{white-space:nowrap}"
						+ x
						+ "note{"
						+ o
						+ "0 auto;"
						+ n
						+ "9px;font-size:12px;text-align:center}"
						+ x
						+ "note "
						+ x
						+ "note_note{"
						+ o
						+ "0;"
						+ r
						+ "#"
						+ l
						+ "}"
						+ x
						+ "wide a{display:block;margin-top:3px;"
						+ t
						+ "-top:1px solid #"
						+ k
						+ ";text-align:center}"
						+ x
						+ "label {position: absolute !important;clip: rect(1px 1px 1px 1px); clip: rect(1px, 1px, 1px, 1px);overflow: hidden; }iframe"
						+ x
						+ "shim {"
						+ s
						+ " transparent;"
						+ t
						+ ': 0;bottom: 0;filter: alpha(opacity=0); height: 100%;left: 0;right: 0;top: 0;position: absolute;width: 100%;z-index: 9999996;_height: expression( ((e=document.documentElement.clientHeight)?e:document.body.clientHeight)+"px" ); _width: expression( ((e=document.documentElement.clientWidth)?e:document.body.clientWidth)+"px" ); }'
						+ x
						+ "dd img {"
						+ t
						+ ":0;-ms-touch-action:manipulation;}"
						+ x
						+ 'button_facebook_like iframe {max-width: none;}iframe[id^="PIN_"][id$="_nag"] {display: none !important;}'
						+ z + "a2a" + d + "0!important}" + z + "a2a_sm" + d
						+ "-17" + y + "agregator" + d + "-34" + y + "aim" + d
						+ "-51" + y + "amazon" + d + "-68" + y + "aol" + d
						+ "-85" + y + "app_net" + d + "-102" + y + "baidu" + d
						+ "-119" + y + "balatarin" + d + "-136" + y + "behance"
						+ d + "-153" + y + "bibsonomy" + d + "-170" + y
						+ "bitty" + d + "-187" + y + "blinklist" + d + "-204"
						+ y + "blogger" + d + "-221" + y + "blogmarks" + d
						+ "-238" + y + "bookmark" + d + "-255" + y
						+ "bookmarks_fr" + d + "-272" + y + "box" + d + "-289"
						+ y + "buddymarks" + d + "-306" + y + "buffer" + d
						+ "-323" + y + "care2" + d + "-340" + y + "chrome" + d
						+ "-357" + y + "citeulike" + d + "-374" + y
						+ "dailyrotation" + d + "-391" + y + "default" + d
						+ "-408" + y + "delicious" + d + "-425" + y
						+ "designfloat" + d + "-442" + y + "diary_ru" + d
						+ "-459" + y + "diaspora" + d + "-476" + y + "digg" + d
						+ "-493" + y + "dihitt" + d + "-510" + y + "diigo" + d
						+ "-527" + y + "dzone" + d + "-544" + y + "email" + d
						+ "-561" + y + "evernote" + d + "-578" + y + "facebook"
						+ d + "-595" + y + "fark" + d + "-612" + y + "feed" + d
						+ "-629" + y + "feedblitz" + d + "-646" + y
						+ "feedbucket" + d + "-663" + y + "feedly" + d + "-680"
						+ y + "feedmailer" + d + "-697" + y + "find" + d
						+ "-714" + y + "firefox" + d + "-731" + y + "flickr"
						+ d + "-748" + y + "flipboard" + d + "-765" + y
						+ "folkd" + d + "-782" + y + "foursquare" + d + "-799"
						+ y + "github" + d + "-816" + y + "gmail" + d + "-833"
						+ y + "google" + d + "-850" + y + "google_classroom"
						+ d + "-867" + y + "google_plus" + d + "-884" + y
						+ "hatena" + d + "-901" + y + "instagram" + d + "-918"
						+ y + "instapaper" + d + "-935" + y + "itunes" + d
						+ "-952" + y + "jamespot" + d + "-969" + y + "kakao"
						+ d + "-986" + y + "kindle" + d + "-1003" + y
						+ "klipfolio" + d + "-1020" + y + "known" + d + "-1037"
						+ y + "line" + d + "-1054" + y + "linkedin" + d
						+ "-1071" + y + "livejournal" + d + "-1088" + y
						+ "mail_ru" + d + "-1105" + y + "mendeley" + d
						+ "-1122" + y + "meneame" + d + "-1139" + y + "miro"
						+ d + "-1156" + y + "mixi" + d + "-1173" + y
						+ "myspace" + d + "-1190" + y + "netlog" + d + "-1207"
						+ y + "netvibes" + d + "-1224" + y + "netvouz" + d
						+ "-1241" + y + "newsalloy" + d + "-1258" + y
						+ "newsisfree" + d + "-1275" + y + "newsvine" + d
						+ "-1292" + y + "nujij" + d + "-1309" + y
						+ "odnoklassniki" + d + "-1326" + y + "oknotizie" + d
						+ "-1343" + y + "oldreader" + d + "-1360" + y
						+ "outlook_com" + d + "-1377" + y + "pinboard" + d
						+ "-1394" + y + "pinterest" + d + "-1411" + y + "plurk"
						+ d + "-1428" + y + "pocket" + d + "-1445" + y
						+ "podnova" + d + "-1462" + y + "print" + d + "-1479"
						+ y + "printfriendly" + d + "-1496" + y + "protopage"
						+ d + "-1513" + y + "pusha" + d + "-1530" + y + "qzone"
						+ d + "-1547" + y + "reddit" + d + "-1564" + y
						+ "rediff" + d + "-1581" + y + "renren" + d + "-1598"
						+ y + "segnalo" + d + "-1615" + y + "share" + d
						+ "-1632" + y + "sina_weibo" + d + "-1649" + y
						+ "sitejot" + d + "-1666" + y + "slashdot" + d
						+ "-1683" + y + "sms" + d + "-1700" + y + "stumbleupon"
						+ d + "-1717" + y + "stumpedia" + d + "-1734" + y
						+ "svejo" + d + "-1751" + y + "symbaloo" + d + "-1768"
						+ y + "telegram" + d + "-1785" + y
						+ "thefreedictionary" + d + "-1802" + y
						+ "thefreelibrary" + d + "-1819" + y + "tuenti" + d
						+ "-1836" + y + "tumblr" + d + "-1853" + y + "twiddla"
						+ d + "-1870" + y + "twitter" + d + "-1887" + y
						+ "typepad" + d + "-1904" + y + "viadeo" + d + "-1921"
						+ y + "vimeo" + d + "-1938" + y + "vk" + d + "-1955"
						+ y + "wanelo" + d + "-1972" + y + "webnews" + d
						+ "-1989" + y + "whatsapp" + d + "-2006" + y
						+ "winksite" + d + "-2023" + y + "wordpress" + d
						+ "-2040" + y + "wykop" + d;
				g += "-2057" + y + "xing" + d + "-2074" + y + "y18" + d
						+ "-2091" + y + "yahoo" + d + "-2108" + y + "yim" + d
						+ "-2125" + y + "yoolink" + d + "-2142" + y + "youmob"
						+ d + "-2159" + y + "youtube" + d + "-2176" + y
						+ "yummly" + d + "-2193" + a + "";
				i.setAttribute("type", "text/css");
				a2a.head_tag.appendChild(i);
				if (i.styleSheet) {
					i.styleSheet.cssText = g
				} else {
					p = document.createTextNode(g);
					i.appendChild(p)
				}
			},
			svg_css : function() {
				var a = window, e = a2a.fix_icons, f = [ "icons.15.svg.css",
						"icons.15.png.css", "icons.15.old.css" ], c = a2a
						.svg_works(), d = function(i) {
					var h = a.document.createElement("link"), g = a2a.c.static_server, j = (i
							&& c && g != "https://static.addtoany.com/menu") ? g
							+ "/"
							: g + "/svg/";
					h.rel = "stylesheet";
					h.href = j + f[i && c ? 0 : i ? 1 : 2];
					a2a.head_tag.appendChild(h);
					e()
				}, b = new a.Image();
				b.onerror = function() {
					d(false)
				};
				b.onload = function() {
					d(b.width === 1 && b.height === 1)
				};
				b.src = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";
				a2a.svg_css = e
			},
			svg_works : function() {
				var a = window, b = !!a.document.createElementNS
						&& !!a.document.createElementNS(
								"http://www.w3.org/2000/svg", "svg").createSVGRect
						&& !!document.implementation.hasFeature(
								"http://www.w3.org/TR/SVG11/feature#Image",
								"1.1")
						&& !(a.opera && navigator.userAgent.indexOf("Chrome") === -1);
				a2a.svg_works = function() {
					return b
				};
				return b
			},
			make_service : function(b, d, k, h, l, e) {
				var g = document.createElement("a"), c = a2a.c, f = function() {
					a2a.linker(this)
				}, j = a2a.type, h = h || {}, i, a = c.icon_color;
				g.rel = "nofollow";
				g.className = "a2a_i";
				g.href = "/#" + d;
				g.target = "_blank";
				g.a2a = {};
				g.a2a.safename = d;
				g.a2a.servicename = b;
				g.a2a.serviceNameLowerCase = b.toLowerCase();
				g.a2a.serviceIcon = k;
				g.a2a.serviceType = h.type;
				g.innerHTML = "<span></span>" + b + " ";
				i = g.firstChild;
				if (h.type) {
					g.a2a.stype = h.type
				}
				if (h.src) {
					g.a2a.js_src = h.src
				}
				if (h.url) {
					g.a2a.url = h.url
				}
				if (h.pu) {
					g.a2a.popup = 1
				}
				if (l) {
					g.a2a.customserviceuri = l
				}
				if (e) {
					i.style.backgroundImage = "url(" + e + ")";
					i.className = "a2a_svg a2a_s__default"
				} else {
					if (a && a2a.svg_works()) {
						i.className = "a2a_svg a2a_w__default a2a_w_" + k;
						i.style.backgroundColor = a
					} else {
						if (k) {
							i.className = "a2a_svg a2a_s__default a2a_s_" + k
						} else {
							i.className = "a2a_svg a2a_s__default"
						}
					}
				}
				a2a.add_event(g, "mousedown", f);
				a2a.add_event(g, "keydown", f);
				a2a.add_event(g, "click", function(o) {
					var m = a2a["n" + a2a.n], p = {
						node : g,
						service : b,
						title : m.linkname,
						url : m.linkurl
					}, n = a2a.cbs("share", p);
					if (typeof n != "undefined") {
						if (n.url) {
							m.linkurl = n.url;
							m.linkurl_implicit = false
						}
						if (n.title) {
							m.linkname = n.title;
							m.linkname_implicit = false
						}
						a2a.linker(g);
						if (n.stop) {
							a2a.preventDefault(o)
						}
					}
				});
				a2a
						.add_event(
								g,
								"click",
								function(m) {
									var p = encodeURIComponent, n = a2a["n"
											+ a2a.n], r = (j == "page") ? "pages"
											: "subscriptions", o = (j == "page") ? "AddToAny Share/Save Button"
											: "AddToAny Subscribe Button", q = screen.height, s = 550, u = 450, t = "event=service_click&url="
											+ p(location.href)
											+ "&title="
											+ p(document.title || "")
											+ "&ev_service="
											+ p(d)
											+ "&ev_service_type=menu&ev_menu_type="
											+ j
											+ "&ev_url="
											+ p(n.linkurl)
											+ "&ev_title="
											+ p(n.linkname)
													.replace(/'/g, "%27");
									if (g.a2a.popup && !a2a.defaultPrevented(m)) {
										a2a.preventDefault(m);
										window
												.open(
														g.href,
														"_blank",
														"toolbar=0,personalbar=0,resizable,scrollbars,status,width=550,height=450,top="
																+ ((q > u) ? Math
																		.round(q
																				/ 2
																				- u
																				/ 2)
																		: 40)
																+ ",left="
																+ Math
																		.round(screen.width
																				/ 2
																				- s
																				/ 2))
									}
									a2a.util_frame_post(j, t);
									a2a.GA.track(b, d, n.linkurl, r, o)
								});
				return g
			},
			i18n : function() {
				if (a2a.c.static_server != "https://static.addtoany.com/menu") {
					return false
				}
				var c = [ "ar", "id", "ms", "bn", "bs", "bg", "ca", "ca-AD",
						"ca-ES", "cs", "cy", "da", "de", "dv", "el", "et",
						"es", "es-AR", "es-VE", "eo", "en-US", "eu", "fa",
						"fr", "fr-CA", "gd", "he", "hi", "hr", "is", "it",
						"ja", "ko", "ku", "lv", "lt", "li", "hu", "mk", "nl",
						"no", "pl", "pt", "pt-BR", "pt-PT", "ro", "ru", "sr",
						"fi", "sk", "sl", "sv", "ta", "te", "tr", "uk", "vi",
						"zh-CN", "zh-TW" ], d = a2a.c.locale
						|| (navigator.browserLanguage || navigator.language)
								.toLowerCase(), b = a2a.in_array(d, c, true);
				if (!b) {
					var a = d.indexOf("-");
					if (a != -1) {
						b = a2a.in_array(d.substr(0, a), c, true)
					}
				}
				if (d != "en-us" && b) {
					return b
				} else {
					return false
				}
			}
		};
a2a.c = a2a_config;
a2a.make_once = function(c) {
	a2a.type = a2a.c.menu_type || c;
	if (!a2a[a2a.type] && !window["a2a" + a2a.type + "_init"]) {
		a2a[a2a.type] = {};
		window.a2a_show_dropdown = a2a.show_menu;
		window.a2a_onMouseOut_delay = a2a.onMouseOut_delay;
		window.a2a_init = a2a.init;
		a2a["create_" + a2a.type + "_dropdown"] = function(O, u) {
			var o = a2a.gEl, s = a2a.type = O, q = "a2a" + s, N = a2a.c, A = a2a
					.ieo(), y, p = document.createElement("i"), m, l, M, F = document
					.createElement("a"), v = N.icon_color, x = (v && a2a
					.svg_works()) ? "a2a_svg a2a_w__default a2a_w_"
					: "a2a_svg a2a_s__default a2a_s_", C = (v) ? ' style="background-color:'
					+ v + '"'
					: "", K = N.localize;
			a2a.css();
			K = N.localize = {
				Share : K.Share || "Share",
				Save : K.Save || "Save",
				Subscribe : K.Subscribe || "Subscribe",
				Email : K.Email || "Email",
				Bookmark : K.Bookmark || "Bookmark",
				ShowAll : K.ShowAll || "Show all",
				ShowLess : K.ShowLess || "Show less",
				FindAnyServiceToAddTo : K.FindAnyServiceToAddTo
						|| "Find any service",
				PoweredBy : K.PoweredBy || "By",
				AnyEmail : "Any email",
				ShareViaEmail : K.ShareViaEmail || "Share via email",
				SubscribeViaEmail : K.SubscribeViaEmail
						|| "Subscribe via email",
				BookmarkInYourBrowser : K.BookmarkInYourBrowser
						|| "Bookmark in your browser",
				BookmarkInstructions : K.BookmarkInstructions
						|| "Press Ctrl+D or &#8984;+D to bookmark this page",
				AddToYourFavorites : K.AddToYourFavorites || "Add to Favorites",
				SendFromWebOrProgram : K.SendFromWebOrProgram
						|| "Send from any other email service",
				EmailProgram : K.EmailProgram || "Email application",
				More : K.More || "More&#8230;"
			};
			var n = '<div class="a2a_overlay" id="a2a'
					+ s
					+ '_overlay"></div><div class="a2a_menu a2a_full" id="a2a'
					+ s
					+ '_full" role="dialog" tabindex="-1" aria-label="'
					+ (s == "feed" ? K.Subscribe : K.Share)
					+ '"><div class="a2a_full_header"><div id="a2a'
					+ s
					+ '_find_container" class="a2a_menu_find_container"><input id="a2a'
					+ s
					+ '_find" class="a2a_menu_find" type="text" onclick="a2a.focus_find()" onkeyup="a2a.do_find()" autocomplete="off" title="'
					+ K.FindAnyServiceToAddTo
					+ '"/><span id="a2a'
					+ s
					+ '_find_icon" class="a2a_svg a2a_s_find" onclick="a2a.focus_find()"><svg focusable="false" xmlns="http://www.w3.org/2000/svg" version="1.1" x="0" y="0" width="24" height="24" viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve"><path fill="#CCCCCC" d="M19.7 18.2l-4.5-4.5c0.7-1.1 1.2-2.3 1.2-3.6 0-3.5-2.8-6.3-6.3-6.3 -3.5 0-6.3 2.8-6.3 6.3 0 3.5 2.8 6.3 6.3 6.3 1.4 0 2.6-0.4 3.6-1.2l4.5 4.5c0.6 0.6 1.3 0.7 1.7 0.2C20.4 19.5 20.3 18.8 19.7 18.2zM10.1 14.6c-2.5 0-4.5-2.1-4.5-4.5 0-2.5 2.1-4.5 4.5-4.5 2.5 0 4.5 2.1 4.5 4.5C14.6 12.5 12.6 14.6 10.1 14.6z"/></svg></span></div></div><div class="a2a_full_services" id="a2a'
					+ s
					+ '_full_services" role="presentation"></div><div class="a2a_full_footer"><a href="https://www.addtoany.com" title="Share Buttons" target="_blank"><span class="'
					+ x
					+ 'a2a"'
					+ C
					+ '></span>AddToAny</a></div></div><div id="a2a'
					+ s
					+ '_dropdown" class="a2a_menu a2a_mini" onmouseover="a2a.onMouseOver_stay()"'
					+ ((a2a[s].onclick) ? ""
							: ' onmouseout="a2a.onMouseOut_delay()"')
					+ ' tabindex="-1" aria-label="'
					+ (s == "feed" ? K.Subscribe : K.Share)
					+ '" style="display:none"><div id="a2a'
					+ s
					+ '_title_container" class="a2a_menu_title_container"'
					+ ((a2a[s].show_title) ? "" : ' style="display:none"')
					+ '><input id="a2a'
					+ s
					+ '_title" class="a2a_menu_title"/></div><div class="a2a_mini_services" id="a2a'
					+ s + '_mini_services"></div>';
			n += '<div id="a2a'
					+ s
					+ '_cols_container" class="a2a_cols_container"><div class="a2a_col1" id="a2a'
					+ s + '_col1"'
					+ ((s == "mail") ? ' style="display:none"' : "")
					+ '></div><div id="a2a' + s + '_2_col1"'
					+ ((s != "mail") ? ' style="display:none"' : "")
					+ '></div><div class="a2a_clear"></div></div>';
			if (s != "mail") {
				n += '<div class="a2a'
						+ s
						+ '_wide a2a_wide"><a href="" id="a2a'
						+ s
						+ '_show_more_less" class="a2a_menu_show_more_less a2a_more" title="'
						+ K.ShowAll + '"><span class="' + x + 'a2a"' + C
						+ "></span>" + K.More + "</a></div>"
			}
			n += "</div>";
			var E = "a2a_menu_container", J = o(E)
					|| document.createElement("div");
			a2a.add_event(J, "mouseup", a2a.stopPropagation);
			a2a.add_event(J, "mousedown", a2a.stopPropagation);
			a2a.add_event(J, "touchstart", a2a.stopPropagation);
			a2a.add_event(J, "touchend", a2a.stopPropagation);
			a2a.add_event(J, "MSPointerDown", a2a.stopPropagation);
			a2a.add_event(J, "MSPointerUp", a2a.stopPropagation);
			J.innerHTML = n;
			if (J.id != E) {
				J.style.position = "static";
				if (A && A < 9) {
					document.body.insertBefore(J, document.body.firstChild)
				} else {
					document.body.insertBefore(J, null)
				}
			}
			var r = new RegExp("[\\?&]awesm=([^&#]*)"), w = r
					.exec(window.location.href);
			if (w != null) {
				N.awesm = w[1]
			} else {
				N.awesm = false
			}
			var t = a2a.make_service;
			if (s != "mail") {
				for (var I = 0, k = u.most, B = k.length, D = parseInt(a2a[s].num_services), G = a2a[s].exclude_services; I < B; I++) {
					var H = k[I];
					if (!G || !a2a.in_array(H[1], G, true)) {
						o(q + "_full_services").appendChild(
								t(H[0], H[1], H[2], H[3]))
					}
					if (I < D && (!G || !a2a.in_array(H[1], G, true))) {
						o(q + "_mini_services").appendChild(
								t(H[0], H[1], H[2], H[3]))
					}
				}
			}
			y = o(q + "_full_services");
			p.className = "a2a_i";
			m = p.cloneNode();
			y.appendChild(p);
			y.appendChild(m);
			for (var I = 0, e = u.email, z = e.length; I < z; I++) {
				var H = e[I];
				if (!G || !a2a.in_array(H[1], G, true)) {
					o(q + "_2_col1").appendChild(t(H[0], H[1], H[2], H[3]))
				}
			}
			if (s != "feed") {
				var j = t(
						K.AnyEmail,
						"email_form",
						"email",
						null,
						"http://www.addtoany.com/email?linkurl=A2A_LINKURL_ENC&linkname=A2A_LINKNAME_ENC");
				j.className = "a2a_i a2a_emailer";
				j.id = "a2a" + s + "_any_email";
				o(q + "_2_col1").appendChild(j);
				var L = t("Email (mailto)", "email_form", "email", null,
						"mailto:?subject=A2A_LINKNAME_ENC&body=A2A_LINKURL_ENC");
				L.className = "a2a_i a2a_emailer a2a_email_client";
				L.id = "a2a" + s + "_email_client";
				L.innerHTML = '<span class="' + x + 'email"' + C
						+ "></span>Email app";
				L.target = "";
				o(q + "_2_col1").appendChild(L)
			}
			a2a[s].services = u.most.concat(u.email);
			if (s != "mail") {
				a2a.fast_click.make(o(q + "_overlay"), function(P) {
					a2a.hide_full(s)
				});
				a2a.fast_click.make(o(q + "_show_more_less"), function(P) {
					a2a.preventDefault(P);
					a2a.show_more_less(0)
				})
			}
			a2a.arrange_services();
			a2a.util_frame_listen(s);
			a2a.collections(s);
			a2a.default_services();
			if (s != "mail") {
				M = o(q + "_find");
				M.onkeydown = function(U) {
					var U = U || window.event, S = U.which || U.keyCode, T = a2a.type;
					if (S == 13) {
						for (var R = 0, Q = a2a[T].main_services, V = Q.length, P; R < V; R++) {
							P = Q[R];
							if (P.style.display != "none") {
								P.focus();
								return false
							}
						}
					} else {
						if (S == 27) {
							if (M.value == "") {
								M.blur()
							}
							M.value = "";
							a2a.do_find()
						}
					}
				}
			}
		};
		var h = {};
		h.page = {
			most : [
					[ "Facebook", "facebook", "facebook", {
						pu : 1
					} ],
					[ "Twitter", "twitter", "twitter", {
						pu : 1
					} ],
					[ "Google+", "google_plus", "google_plus", {
						pu : 1
					} ],
					[ "Pinterest", "pinterest", "pinterest", {
						type : "js",
						src : "https://static.addtoany.com/menu/pinmarklet.js"
					} ],
					[ "Email", "email", "email", {
						url : "mailto:?subject=${title}&body=${link}"
					} ],
					[ "LinkedIn", "linkedin", "linkedin", {
						pu : 1
					} ],
					[ "Reddit", "reddit", "reddit" ],
					[ "Tumblr", "tumblr", "tumblr", {
						pu : 1
					} ],
					[ "WordPress", "wordpress", "wordpress" ],
					[ "Google Gmail", "google_gmail", "gmail", {
						type : "email",
						pu : 1
					} ],
					[ "WhatsApp", "whatsapp", "whatsapp", {
						url : "whatsapp://send?text=${title}%20${link}"
					} ],
					[ "StumbleUpon", "stumbleupon", "stumbleupon" ],
					[ "AIM", "aim", "aim" ],
					[ "Amazon Wish List", "amazon_wish_list", "amazon" ],
					[ "AOL Mail", "aol_mail", "aol", {
						type : "email",
						pu : 1
					} ],
					[ "App.net", "app_net", "app_net" ],
					[ "Baidu", "baidu", "baidu" ],
					[ "Balatarin", "balatarin", "balatarin" ],
					[ "BibSonomy", "bibsonomy", "bibsonomy" ],
					[ "Bitty Browser", "bitty_browser", "bitty" ],
					[ "Blinklist", "blinklist", "blinklist" ],
					[ "Blogger Post", "blogger_post", "blogger" ],
					[ "BlogMarks", "blogmarks", "blogmarks" ],
					[ "Bookmarks.fr", "bookmarks_fr", "bookmarks_fr" ],
					[ "Box.net", "box_net", "box" ],
					[ "BuddyMarks", "buddymarks", "buddymarks" ],
					[ "Buffer", "buffer", "buffer" ],
					[ "Care2 News", "care2_news", "care2" ],
					[ "CiteULike", "citeulike", "citeulike" ],
					[ "Delicious", "delicious", "delicious" ],
					[ "Design Float", "design_float", "designfloat" ],
					[ "Diary.Ru", "diary_ru", "diary_ru" ],
					[ "Diaspora", "diaspora", "diaspora" ],
					[ "Digg", "digg", "digg" ],
					[ "diHITT", "dihitt", "dihitt" ],
					[ "Diigo", "diigo", "diigo" ],
					[ "DZone", "dzone", "dzone" ],
					[ "Evernote", "evernote", "evernote" ],
					[ "Fark", "fark", "fark" ],
					[ "Flipboard", "flipboard", "flipboard", {
						pu : 1
					} ],
					[ "Folkd", "folkd", "folkd" ],
					[ "Google Bookmarks", "google_bookmarks", "google" ],
					[ "Google Classroom", "google_classroom",
							"google_classroom" ],
					[ "Hacker News", "hacker_news", "y18" ],
					[ "Hatena", "hatena", "hatena" ],
					[ "Instapaper", "instapaper", "instapaper" ],
					[ "Jamespot", "jamespot", "jamespot" ],
					[ "Kakao", "kakao", "kakao", {
						pu : 1
					} ],
					[ "Kindle It", "kindle_it", "kindle" ],
					[ "Known", "known", "known" ],
					[ "Line", "line", "line" ],
					[ "LiveJournal", "livejournal", "livejournal" ],
					[ "Mail.Ru", "mail_ru", "mail_ru" ],
					[ "Mendeley", "mendeley", "mendeley" ],
					[ "Meneame", "meneame", "meneame" ],
					[ "Mixi", "mixi", "mixi" ],
					[ "MySpace", "myspace", "myspace" ],
					[ "Netlog", "netlog", "netlog" ],
					[ "Netvouz", "netvouz", "netvouz" ],
					[ "NewsVine", "newsvine", "newsvine" ],
					[ "NUjij", "nujij", "nujij" ],
					[ "Odnoklassniki", "odnoklassniki", "odnoklassniki" ],
					[ "Oknotizie", "oknotizie", "oknotizie" ],
					[ "Outlook.com", "outlook_com", "outlook_com", {
						type : "email"
					} ],
					[ "Pinboard", "pinboard", "pinboard", {
						pu : 1
					} ],
					[ "Plurk", "plurk", "plurk" ],
					[ "Pocket", "pocket", "pocket" ],
					[ "Print", "print", "print", {
						type : "js",
						src : "javascript:print()"
					} ],
					[ "PrintFriendly", "printfriendly", "printfriendly" ],
					[ "Protopage Bookmarks", "protopage_bookmarks", "protopage" ],
					[ "Pusha", "pusha", "pusha" ],
					[ "Qzone", "qzone", "qzone" ],
					[ "Rediff MyPage", "rediff", "rediff" ],
					[ "Renren", "renren", "renren", {
						pu : 1
					} ], [ "Segnalo", "segnalo", "segnalo" ],
					[ "Sina Weibo", "sina_weibo", "sina_weibo" ],
					[ "SiteJot", "sitejot", "sitejot" ],
					[ "Slashdot", "slashdot", "slashdot" ],
					[ "SMS", "sms", "sms", {
						url : "sms://&body=${title}%20${link}"
					} ], [ "Stumpedia", "stumpedia", "stumpedia" ],
					[ "Svejo", "svejo", "svejo" ],
					[ "Symbaloo Feeds", "symbaloo_feeds", "symbaloo" ],
					[ "Telegram", "telegram", "telegram" ],
					[ "Tuenti", "tuenti", "tuenti" ],
					[ "Twiddla", "twiddla", "twiddla" ],
					[ "TypePad Post", "typepad_post", "typepad" ],
					[ "Viadeo", "viadeo", "viadeo", {
						pu : 1
					} ], [ "VK", "vk", "vk" ],
					[ "Wanelo", "wanelo", "wanelo" ],
					[ "Webnews", "webnews", "webnews" ],
					[ "Wykop", "wykop", "wykop" ], [ "XING", "xing", "xing", {
						pu : 1
					} ], [ "Yahoo Bookmarks", "yahoo_bookmarks", "yahoo" ],
					[ "Yahoo Mail", "yahoo_mail", "yahoo", {
						type : "email"
					} ], [ "Yahoo Messenger", "yahoo_messenger", "yim", {
						url : "ymsgr:sendim?+&m=${link}"
					} ], [ "Yoolink", "yoolink", "yoolink" ],
					[ "YouMob", "youmob", "youmob" ],
					[ "Yummly", "yummly", "yummly", {
						type : "js",
						src : "https://www.yummly.com/js/yumlet.js"
					} ] ],
			email : [ [ "Google Gmail", "google_gmail", "gmail", {
				type : "email",
				pu : 1
			} ], [ "AOL Mail", "aol_mail", "aol", {
				type : "email",
				pu : 1
			} ], [ "Outlook.com", "outlook_com", "outlook_com", {
				type : "email"
			} ], [ "Yahoo Mail", "yahoo_mail", "yahoo", {
				type : "email"
			} ] ]
		};
		h.feed = {
			most : [
					[ "Feed", "feed", "feed", {
						url : "${link_noenc}"
					} ],
					[ "Feedly", "feedly", "feedly" ],
					[ "My Yahoo", "my_yahoo", "yahoo" ],
					[ "FeedBlitz", "feedblitz", "feedblitz", {
						type : "email"
					} ],
					[ "AOL Reader", "my_aol", "aol" ],
					[ "The Old Reader", "oldreader", "oldreader" ],
					[ "Agregator", "agregator", "agregator" ],
					[ "Bitty Browser Preview", "bitty_browser_preview", "bitty" ],
					[ "Daily Rotation", "daily_rotation", "dailyrotation" ],
					[ "Feed Mailer", "feed_mailer", "feedmailer" ],
					[ "FeedBucket", "feedbucket", "feedbucket" ],
					[ "iTunes", "itunes", "itunes", {
						url : "itpc://${link_nohttp}"
					} ],
					[ "KlipFolio", "klipfolio", "klipfolio" ],
					[ "Miro", "miro", "miro" ],
					[ "Netvibes", "netvibes", "netvibes" ],
					[ "NewsAlloy", "newsalloy", "newsalloy" ],
					[ "NewsIsFree", "newsisfree", "newsisfree" ],
					[ "Outlook", "outlook", "outlook_com", {
						url : "feed://${link_nohttp}"
					} ],
					[ "PodNova", "podnova", "podnova" ],
					[ "Protopage News Feeds", "protopage_news_feeds",
							"protopage" ],
					[ "Symbaloo Bookmarks", "symbaloo_bookmarks", "symbaloo" ],
					[ "The Free Dictionary", "the_free_dictionary",
							"thefreedictionary" ],
					[ "The Free Library", "the_free_library", "thefreelibrary" ],
					[ "WINKsite", "winksite", "winksite" ] ],
			email : [ [ "FeedBlitz", "feedblitz", "feedblitz", {
				type : "email"
			} ] ]
		};
		var d = a2a.type, a = a2a[d], g = (d == "feed") ? "feed" : "page", b = a2a.c, i = location.host
				.split(".").slice(-1);
		a.find_focused = false;
		a.show_all = false;
		a.prev_keydown = document.onkeydown || false;
		a.onclick = b.onclick || false;
		a.show_title = b.show_title || false;
		a.num_services = b.num_services || 8;
		a.exclude_services = b.exclude_services || false;
		a.custom_services = b.custom_services || false;
		a2a.locale = a2a.i18n();
		if (a2a.locale && a2a.locale != "custom") {
			a2a.loadExtScript(
					b.static_server + "/locale/" + a2a.locale + ".js",
					function() {
						return (a2a_localize != "")
					}, function() {
						b.localize = a2a_localize;
						b.add_services = window.a2a_add_services;
						a2a["create_" + a2a.type + "_dropdown"](d, h[g]);
						while (a2a.fn_queue.length > 0) {
							(a2a.fn_queue.shift())()
						}
						a2a.locale = null;
						a2a.GA(1);
						a2a.init_show()
					});
			b.menu_type = false
		} else {
			a2a["create_" + a2a.type + "_dropdown"](d, h[g]);
			a2a.GA()
		}
		try {
			document.execCommand("BackgroundImageCache", false, true)
		} catch (f) {
		}
	}
};
(function() {
	var a = function() {
		a2a.type = "page";
		a2a.cbs("ready");
		a = function() {
		}
	};
	if (document.body) {
		a2a.init_all("page");
		a()
	}
	a2a.dom.ready(function() {
		a2a.init_all("page");
		a()
	})
})();
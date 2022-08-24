


                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                                                    <!-- Modified By Atman "github.com/Elon-Fask"   -->
                                                    <!-- Modified By Atman "github.com/Elon-Fask"   -->
                                                    <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          						                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          						                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          						                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                                                    <!-- Modified By Atman "github.com/Elon-Fask"   -->
                                                    <!-- Modified By Atman "github.com/Elon-Fask"   -->
                                                    <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          <!-- Modified By Atman "github.com/Elon-Fask"   -->
                          <!-- Modified By Atman "github.com/Elon-Fask"   -->


<%@page import="net.javahibernate.usermanagment.dao.EmployeeDao"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Management System Dashboard</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./assets/css/tailwind.output.css" />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
      defer
    ></script>
    <script src="./assets/js/init-alpine.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css"
    />
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"
      defer
    ></script>
    <script src="./assets/js/charts-lines.js" defer></script>
    <script src="./assets/js/charts-pie.js" defer></script>
    
    
    <style type="text/css">
    /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-webkit-text-size-adjust:100%}body{margin:0}main{display:block}h1{font-size:2em;margin:.67em 0}hr{box-sizing:content-box;height:0;overflow:visible}pre{font-family:monospace,monospace;font-size:1em}a{background-color:transparent}abbr[title]{border-bottom:none;text-decoration:underline;-webkit-text-decoration:underline dotted;text-decoration:underline dotted}b,strong{font-weight:bolder}code,kbd,samp{font-family:monospace,monospace;font-size:1em}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}img{border-style:none}button,input,optgroup,select,textarea{font-family:inherit;font-size:100%;line-height:1.15;margin:0}button,input{overflow:visible}button,select{text-transform:none}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{border-style:none;padding:0}[type=button]:-moz-focusring,[type=reset]:-moz-focusring,[type=submit]:-moz-focusring,button:-moz-focusring{outline:1px dotted ButtonText}fieldset{padding:.35em .75em .625em}legend{box-sizing:border-box;color:inherit;display:table;max-width:100%;padding:0;white-space:normal}progress{vertical-align:baseline}textarea{overflow:auto}[type=checkbox],[type=radio]{box-sizing:border-box;padding:0}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}details{display:block}summary{display:list-item}[hidden],template{display:none}blockquote,dd,dl,figure,h1,h2,h3,h4,h5,h6,hr,p,pre{margin:0}button{background-color:transparent;background-image:none;padding:0}button:focus{outline:1px dotted;outline:5px auto -webkit-focus-ring-color}fieldset,ol,ul{margin:0;padding:0}ol,ul{list-style:none}html{font-family:Inter,system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;line-height:1.5}*,:after,:before{box-sizing:border-box;border:0 solid #d5d6d7}hr{border-top-width:1px}img{border-style:solid}textarea{resize:vertical}input::-moz-placeholder,textarea::-moz-placeholder{color:#a0aec0}input:-ms-input-placeholder,textarea:-ms-input-placeholder{color:#a0aec0}input::-ms-input-placeholder,textarea::-ms-input-placeholder{color:#a0aec0}input::placeholder,textarea::placeholder{color:#a0aec0}[role=button],button{cursor:pointer}table{border-collapse:collapse}h1,h2,h3,h4,h5,h6{font-size:inherit;font-weight:inherit}a{color:inherit;text-decoration:inherit}button,input,optgroup,select,textarea{padding:0;line-height:inherit;color:inherit}code,kbd,pre,samp{font-family:Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace}audio,canvas,embed,iframe,img,object,svg,video{display:block;vertical-align:middle}img,video{max-width:100%;height:auto}.container{width:100%}@media (min-width:640px){.container{max-width:640px}}@media (min-width:768px){.container{max-width:768px}}@media (min-width:1024px){.container{max-width:1024px}}@media (min-width:1280px){.container{max-width:1280px}}.form-input{-webkit-appearance:none;-moz-appearance:none;appearance:none;background-color:#fff;border-color:#e2e8f0;border-width:1px;border-radius:.25rem;padding:.5rem .75rem;font-size:1rem;line-height:1.5}.form-input::-moz-placeholder{color:#9e9e9e;opacity:1}.form-input:-ms-input-placeholder{color:#9e9e9e;opacity:1}.form-input::-ms-input-placeholder{color:#9e9e9e;opacity:1}.form-input::placeholder{color:#9e9e9e;opacity:1}.form-input:focus{outline:none;box-shadow:0 0 0 3px rgba(66,153,225,.5);border-color:#63b3ed}.form-textarea{-webkit-appearance:none;-moz-appearance:none;appearance:none;background-color:#fff;border-color:#e2e8f0;border-width:1px;border-radius:.25rem;padding:.5rem .75rem;font-size:1rem;line-height:1.5}.form-textarea::-moz-placeholder{color:#9e9e9e;opacity:1}.form-textarea:-ms-input-placeholder{color:#9e9e9e;opacity:1}.form-textarea::-ms-input-placeholder{color:#9e9e9e;opacity:1}.form-textarea::placeholder{color:#9e9e9e;opacity:1}.form-textarea:focus{outline:none;box-shadow:0 0 0 3px rgba(66,153,225,.5);border-color:#63b3ed}.form-multiselect{-webkit-appearance:none;-moz-appearance:none;appearance:none;background-color:#fff;border-color:#e2e8f0;border-width:1px;border-radius:.25rem;padding:.5rem .75rem;font-size:1rem;line-height:1.5}.form-multiselect:focus{outline:none;box-shadow:0 0 0 3px rgba(66,153,225,.5);border-color:#63b3ed}.form-select{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='%23a0aec0'%3E%3Cpath d='M15.3 9.3a1 1 0 011.4 1.4l-4 4a1 1 0 01-1.4 0l-4-4a1 1 0 011.4-1.4l3.3 3.29 3.3-3.3z'/%3E%3C/svg%3E");-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-print-color-adjust:exact;color-adjust:exact;background-repeat:no-repeat;background-color:#fff;border-color:#e2e8f0;border-width:1px;border-radius:.25rem;padding:.5rem 2.5rem .5rem .75rem;font-size:1rem;line-height:1.5;background-position:right .5rem center;background-size:1.5em 1.5em}.form-select::-ms-expand{color:#a0aec0;border:none}@media not print{.form-select::-ms-expand{display:none}}@media print and (-ms-high-contrast:active),print and (-ms-high-contrast:none){.form-select{padding-right:.75rem}}.form-select:focus{outline:none;box-shadow:0 0 0 3px rgba(66,153,225,.5);border-color:#63b3ed}.form-checkbox{-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-print-color-adjust:exact;color-adjust:exact;display:inline-block;vertical-align:middle;background-origin:border-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;flex-shrink:0;height:1em;width:1em;color:#4299e1;background-color:#fff;border-color:#e2e8f0;border-width:1px;border-radius:.25rem}.form-checkbox:checked{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 16 16' fill='%23fff' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M5.707 7.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4a1 1 0 00-1.414-1.414L7 8.586 5.707 7.293z'/%3E%3C/svg%3E");border-color:transparent;background-color:currentColor;background-size:100% 100%;background-position:50%;background-repeat:no-repeat}@media not print{.form-checkbox::-ms-check{border-width:1px;color:transparent;background:inherit;border-color:inherit;border-radius:inherit}}.form-checkbox:focus{outline:none;box-shadow:0 0 0 3px rgba(66,153,225,.5);border-color:#63b3ed}.form-radio{-webkit-appearance:none;-moz-appearance:none;appearance:none;-webkit-print-color-adjust:exact;color-adjust:exact;display:inline-block;vertical-align:middle;background-origin:border-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;flex-shrink:0;border-radius:100%;height:1em;width:1em;color:#4299e1;background-color:#fff;border-color:#e2e8f0;border-width:1px}.form-radio:checked{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg viewBox='0 0 16 16' fill='%23fff' xmlns='http://www.w3.org/2000/svg'%3E%3Ccircle cx='8' cy='8' r='3'/%3E%3C/svg%3E");border-color:transparent;background-color:currentColor;background-size:100% 100%;background-position:50%;background-repeat:no-repeat}@media not print{.form-radio::-ms-check{border-width:1px;color:transparent;background:inherit;border-color:inherit;border-radius:inherit}}.form-radio:focus{outline:none;box-shadow:0 0 0 3px rgba(66,153,225,.5);border-color:#63b3ed}.space-y-2>:not(template)~:not(template){--space-y-reverse:0;margin-top:calc(0.5rem*(1 - var(--space-y-reverse)));margin-bottom:calc(0.5rem*var(--space-y-reverse))}.space-x-3>:not(template)~:not(template){--space-x-reverse:0;margin-right:calc(0.75rem*var(--space-x-reverse));margin-left:calc(0.75rem*(1 - var(--space-x-reverse)))}.space-y-4>:not(template)~:not(template){--space-y-reverse:0;margin-top:calc(1rem*(1 - var(--space-y-reverse)));margin-bottom:calc(1rem*var(--space-y-reverse))}.space-x-4>:not(template)~:not(template){--space-x-reverse:0;margin-right:calc(1rem*var(--space-x-reverse));margin-left:calc(1rem*(1 - var(--space-x-reverse)))}.space-x-6>:not(template)~:not(template){--space-x-reverse:0;margin-right:calc(1.5rem*var(--space-x-reverse));margin-left:calc(1.5rem*(1 - var(--space-x-reverse)))}.divide-y>:not(template)~:not(template){--divide-y-reverse:0;border-top-width:calc(1px*(1 - var(--divide-y-reverse)));border-bottom-width:calc(1px*var(--divide-y-reverse))}.theme-dark .dark\:divide-gray-700>:not(template)~:not(template){--divide-opacity:1;border-color:#24262d;border-color:rgba(36,38,45,var(--divide-opacity))}.bg-white{--bg-opacity:1;background-color:#fff;background-color:rgba(255,255,255,var(--bg-opacity))}.bg-black{--bg-opacity:1;background-color:#000;background-color:rgba(0,0,0,var(--bg-opacity))}.bg-gray-50{--bg-opacity:1;background-color:#f9fafb;background-color:rgba(249,250,251,var(--bg-opacity))}.bg-gray-100{--bg-opacity:1;background-color:#f4f5f7;background-color:rgba(244,245,247,var(--bg-opacity))}.bg-red-100{--bg-opacity:1;background-color:#fde8e8;background-color:rgba(253,232,232,var(--bg-opacity))}.bg-red-600{--bg-opacity:1;background-color:#e02424;background-color:rgba(224,36,36,var(--bg-opacity))}.bg-orange-100{--bg-opacity:1;background-color:#feecdc;background-color:rgba(254,236,220,var(--bg-opacity))}.bg-green-100{--bg-opacity:1;background-color:#def7ec;background-color:rgba(222,247,236,var(--bg-opacity))}.bg-teal-100{--bg-opacity:1;background-color:#d5f5f6;background-color:rgba(213,245,246,var(--bg-opacity))}.bg-teal-500{--bg-opacity:1;background-color:#0694a2;background-color:rgba(6,148,162,var(--bg-opacity))}.bg-teal-600{--bg-opacity:1;background-color:#047481;background-color:rgba(4,116,129,var(--bg-opacity))}.bg-blue-100{--bg-opacity:1;background-color:#e1effe;background-color:rgba(225,239,254,var(--bg-opacity))}.bg-blue-500{--bg-opacity:1;background-color:#3f83f8;background-color:rgba(63,131,248,var(--bg-opacity))}.bg-blue-600{--bg-opacity:1;background-color:#1c64f2;background-color:rgba(28,100,242,var(--bg-opacity))}.bg-purple-600{--bg-opacity:1;background-color:#7e3af2;background-color:rgba(126,58,242,var(--bg-opacity))}.hover\:bg-gray-100:hover{--bg-opacity:1;background-color:#f4f5f7;background-color:rgba(244,245,247,var(--bg-opacity))}.hover\:bg-purple-700:hover{--bg-opacity:1;background-color:#6c2bd9;background-color:rgba(108,43,217,var(--bg-opacity))}.focus\:bg-white:focus{--bg-opacity:1;background-color:#fff;background-color:rgba(255,255,255,var(--bg-opacity))}.active\:bg-transparent:active{background-color:transparent}.active\:bg-purple-600:active{--bg-opacity:1;background-color:#7e3af2;background-color:rgba(126,58,242,var(--bg-opacity))}.theme-dark .dark\:bg-gray-700{--bg-opacity:1;background-color:#24262d;background-color:rgba(36,38,45,var(--bg-opacity))}.theme-dark .dark\:bg-gray-800{--bg-opacity:1;background-color:#1a1c23;background-color:rgba(26,28,35,var(--bg-opacity))}.theme-dark .dark\:bg-gray-900{--bg-opacity:1;background-color:#121317;background-color:rgba(18,19,23,var(--bg-opacity))}.theme-dark .dark\:bg-red-600{--bg-opacity:1;background-color:#e02424;background-color:rgba(224,36,36,var(--bg-opacity))}.theme-dark .dark\:bg-red-700{--bg-opacity:1;background-color:#c81e1e;background-color:rgba(200,30,30,var(--bg-opacity))}.theme-dark .dark\:bg-orange-500{--bg-opacity:1;background-color:#ff5a1f;background-color:rgba(255,90,31,var(--bg-opacity))}.theme-dark .dark\:bg-orange-600{--bg-opacity:1;background-color:#d03801;background-color:rgba(208,56,1,var(--bg-opacity))}.theme-dark .dark\:bg-green-500{--bg-opacity:1;background-color:#0e9f6e;background-color:rgba(14,159,110,var(--bg-opacity))}.theme-dark .dark\:bg-green-700{--bg-opacity:1;background-color:#046c4e;background-color:rgba(4,108,78,var(--bg-opacity))}.theme-dark .dark\:bg-teal-500{--bg-opacity:1;background-color:#0694a2;background-color:rgba(6,148,162,var(--bg-opacity))}.theme-dark .dark\:bg-blue-500{--bg-opacity:1;background-color:#3f83f8;background-color:rgba(63,131,248,var(--bg-opacity))}.theme-dark .dark\:hover\:bg-gray-800:hover{--bg-opacity:1;background-color:#1a1c23;background-color:rgba(26,28,35,var(--bg-opacity))}.bg-opacity-50{--bg-opacity:0.5}.border-transparent{border-color:transparent}.border-white{--border-opacity:1;border-color:#fff;border-color:rgba(255,255,255,var(--border-opacity))}.border-gray-100{--border-opacity:1;border-color:#f4f5f7;border-color:rgba(244,245,247,var(--border-opacity))}.border-gray-300{--border-opacity:1;border-color:#d5d6d7;border-color:rgba(213,214,215,var(--border-opacity))}.border-red-600{--border-opacity:1;border-color:#e02424;border-color:rgba(224,36,36,var(--border-opacity))}.border-green-600{--border-opacity:1;border-color:#057a55;border-color:rgba(5,122,85,var(--border-opacity))}.border-purple-600{--border-opacity:1;border-color:#7e3af2;border-color:rgba(126,58,242,var(--border-opacity))}.focus\:border-gray-500:focus{--border-opacity:1;border-color:#707275;border-color:rgba(112,114,117,var(--border-opacity))}.focus\:border-red-400:focus{--border-opacity:1;border-color:#f98080;border-color:rgba(249,128,128,var(--border-opacity))}.focus\:border-green-400:focus{--border-opacity:1;border-color:#31c48d;border-color:rgba(49,196,141,var(--border-opacity))}.focus\:border-purple-300:focus{--border-opacity:1;border-color:#cabffd;border-color:rgba(202,191,253,var(--border-opacity))}.focus\:border-purple-400:focus{--border-opacity:1;border-color:#ac94fa;border-color:rgba(172,148,250,var(--border-opacity))}.hover\:border-gray-500:hover{--border-opacity:1;border-color:#707275;border-color:rgba(112,114,117,var(--border-opacity))}.theme-dark .dark\:border-gray-600{--border-opacity:1;border-color:#4c4f52;border-color:rgba(76,79,82,var(--border-opacity))}.theme-dark .dark\:border-gray-700{--border-opacity:1;border-color:#24262d;border-color:rgba(36,38,45,var(--border-opacity))}.theme-dark .dark\:border-gray-800{--border-opacity:1;border-color:#1a1c23;border-color:rgba(26,28,35,var(--border-opacity))}.rounded{border-radius:.25rem}.rounded-md{border-radius:.375rem}.rounded-lg{border-radius:.5rem}.rounded-full{border-radius:9999px}.rounded-r-md{border-top-right-radius:.375rem;border-bottom-right-radius:.375rem}.rounded-l-md{border-top-left-radius:.375rem;border-bottom-left-radius:.375rem}.rounded-t-lg{border-top-left-radius:.5rem}.rounded-r-lg,.rounded-t-lg{border-top-right-radius:.5rem}.rounded-r-lg{border-bottom-right-radius:.5rem}.rounded-l-lg{border-top-left-radius:.5rem;border-bottom-left-radius:.5rem}.rounded-tr-lg{border-top-right-radius:.5rem}.rounded-br-lg{border-bottom-right-radius:.5rem}.border-0{border-width:0}.border-2{border-width:2px}.border{border-width:1px}.border-r-0{border-right-width:0}.border-t{border-top-width:1px}.border-b{border-bottom-width:1px}.cursor-not-allowed{cursor:not-allowed}.block{display:block}.inline-block{display:inline-block}.flex{display:flex}.inline-flex{display:inline-flex}.table{display:table}.grid{display:grid}.hidden{display:none}.theme-dark .dark\:block{display:block}.theme-dark .dark\:hidden{display:none}.flex-col{flex-direction:column}.flex-wrap{flex-wrap:wrap}.items-end{align-items:flex-end}.items-center{align-items:center}.justify-end{justify-content:flex-end}.justify-center{justify-content:center}.justify-between{justify-content:space-between}.flex-1{flex:1 1 0%}.flex-shrink-0{flex-shrink:0}.font-medium{font-weight:500}.font-semibold{font-weight:600}.font-bold{font-weight:700}.h-3{height:.75rem}.h-4{height:1rem}.h-5{height:1.25rem}.h-6{height:1.5rem}.h-8{height:2rem}.h-12{height:3rem}.h-32{height:8rem}.h-full{height:100%}.h-screen{height:100vh}.text-xs{font-size:.75rem}.text-sm{font-size:.875rem}.text-lg{font-size:1.125rem}.text-xl{font-size:1.25rem}.text-2xl{font-size:1.5rem}.text-6xl{font-size:4rem}.leading-5{line-height:1.25rem}.leading-none{line-height:1}.leading-tight{line-height:1.25}.my-6{margin-top:1.5rem;margin-bottom:1.5rem}.my-8{margin-top:2rem;margin-bottom:2rem}.mx-auto{margin-left:auto;margin-right:auto}.-mx-6{margin-left:-1.5rem;margin-right:-1.5rem}.mt-1{margin-top:.25rem}.mr-1{margin-right:.25rem}.mt-2{margin-top:.5rem}.mr-2{margin-right:.5rem}.mb-2{margin-bottom:.5rem}.ml-2{margin-left:.5rem}.mr-3{margin-right:.75rem}.ml-3{margin-left:.75rem}.mt-4{margin-top:1rem}.mr-4{margin-right:1rem}.mb-4{margin-bottom:1rem}.ml-4{margin-left:1rem}.mr-5{margin-right:1.25rem}.mt-6{margin-top:1.5rem}.mr-6{margin-right:1.5rem}.mb-6{margin-bottom:1.5rem}.ml-6{margin-left:1.5rem}.mt-8{margin-top:2rem}.mb-8{margin-bottom:2rem}.mt-16{margin-top:4rem}.-mr-1{margin-right:-.25rem}.-ml-1{margin-left:-.25rem}.-mb-4{margin-bottom:-1rem}.max-h-0{max-height:0}.max-h-xl{max-height:36rem}.max-w-xl{max-width:36rem}.max-w-2xl{max-width:42rem}.max-w-4xl{max-width:56rem}.min-h-screen{min-height:100vh}.min-w-0{min-width:0}.object-cover{-o-object-fit:cover;object-fit:cover}.opacity-0{opacity:0}.opacity-25{opacity:.25}.opacity-50{opacity:.5}.opacity-100{opacity:1}.focus\:outline-none:focus{outline:0}.overflow-hidden{overflow:hidden}.overflow-x-auto{overflow-x:auto}.overflow-y-auto{overflow-y:auto}.p-1{padding:.25rem}.p-2{padding:.5rem}.p-3{padding:.75rem}.p-4{padding:1rem}.p-6{padding:1.5rem}.py-1{padding-top:.25rem;padding-bottom:.25rem}.py-2{padding-top:.5rem;padding-bottom:.5rem}.px-2{padding-left:.5rem;padding-right:.5rem}.py-3{padding-top:.75rem;padding-bottom:.75rem}.px-3{padding-left:.75rem;padding-right:.75rem}.py-4{padding-top:1rem;padding-bottom:1rem}.px-4{padding-left:1rem;padding-right:1rem}.px-5{padding-left:1.25rem;padding-right:1.25rem}.px-6{padding-left:1.5rem;padding-right:1.5rem}.px-10{padding-left:2.5rem;padding-right:2.5rem}.pr-2{padding-right:.5rem}.pl-2{padding-left:.5rem}.pl-8{padding-left:2rem}.pr-10{padding-right:2.5rem}.pl-10{padding-left:2.5rem}.pb-16{padding-bottom:4rem}.pr-20{padding-right:5rem}.pl-20{padding-left:5rem}.placeholder-gray-600::-moz-placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.placeholder-gray-600:-ms-input-placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.placeholder-gray-600::-ms-input-placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.placeholder-gray-600::placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.focus\:placeholder-gray-500:focus::-moz-placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.focus\:placeholder-gray-500:focus:-ms-input-placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.focus\:placeholder-gray-500:focus::-ms-input-placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.focus\:placeholder-gray-500:focus::placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.theme-dark .dark\:placeholder-gray-500::-moz-placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.theme-dark .dark\:placeholder-gray-500:-ms-input-placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.theme-dark .dark\:placeholder-gray-500::-ms-input-placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.theme-dark .dark\:placeholder-gray-500::placeholder{--placeholder-opacity:1;color:#707275;color:rgba(112,114,117,var(--placeholder-opacity))}.theme-dark .dark\:focus\:placeholder-gray-600:focus::-moz-placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.theme-dark .dark\:focus\:placeholder-gray-600:focus:-ms-input-placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.theme-dark .dark\:focus\:placeholder-gray-600:focus::-ms-input-placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.theme-dark .dark\:focus\:placeholder-gray-600:focus::placeholder{--placeholder-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--placeholder-opacity))}.pointer-events-none{pointer-events:none}.fixed{position:fixed}.absolute{position:absolute}.relative{position:relative}.inset-0{right:0;left:0}.inset-0,.inset-y-0{top:0;bottom:0}.top-0{top:0}.right-0{right:0}.left-0{left:0}.shadow-xs{box-shadow:0 0 0 1px rgba(0,0,0,.05)}.shadow{box-shadow:0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06)}.shadow-md{box-shadow:0 4px 6px -1px rgba(0,0,0,.1),0 2px 4px -1px rgba(0,0,0,.06)}.shadow-xl{box-shadow:0 20px 25px -5px rgba(0,0,0,.1),0 10px 10px -5px rgba(0,0,0,.04)}.shadow-inner{box-shadow:inset 0 2px 4px 0 rgba(0,0,0,.06)}.fill-current{fill:currentColor}.text-left{text-align:left}.text-center{text-align:center}.text-white{--text-opacity:1;color:#fff;color:rgba(255,255,255,var(--text-opacity))}.text-black{--text-opacity:1;color:#000;color:rgba(0,0,0,var(--text-opacity))}.text-gray-400{--text-opacity:1;color:#9e9e9e;color:rgba(158,158,158,var(--text-opacity))}.text-gray-500{--text-opacity:1;color:#707275;color:rgba(112,114,117,var(--text-opacity))}.text-gray-600{--text-opacity:1;color:#4c4f52;color:rgba(76,79,82,var(--text-opacity))}.text-gray-700{--text-opacity:1;color:#24262d;color:rgba(36,38,45,var(--text-opacity))}.text-gray-800{--text-opacity:1;color:#1a1c23;color:rgba(26,28,35,var(--text-opacity))}.text-red-600{--text-opacity:1;color:#e02424;color:rgba(224,36,36,var(--text-opacity))}.text-red-700{--text-opacity:1;color:#c81e1e;color:rgba(200,30,30,var(--text-opacity))}.text-orange-500{--text-opacity:1;color:#ff5a1f;color:rgba(255,90,31,var(--text-opacity))}.text-orange-700{--text-opacity:1;color:#b43403;color:rgba(180,52,3,var(--text-opacity))}.text-green-500{--text-opacity:1;color:#0e9f6e;color:rgba(14,159,110,var(--text-opacity))}.text-green-600{--text-opacity:1;color:#057a55;color:rgba(5,122,85,var(--text-opacity))}.text-green-700{--text-opacity:1;color:#046c4e;color:rgba(4,108,78,var(--text-opacity))}.text-teal-500{--text-opacity:1;color:#0694a2;color:rgba(6,148,162,var(--text-opacity))}.text-blue-500{--text-opacity:1;color:#3f83f8;color:rgba(63,131,248,var(--text-opacity))}.text-purple-100{--text-opacity:1;color:#edebfe;color:rgba(237,235,254,var(--text-opacity))}.text-purple-200{--text-opacity:1;color:#dcd7fe;color:rgba(220,215,254,var(--text-opacity))}.text-purple-600{--text-opacity:1;color:#7e3af2;color:rgba(126,58,242,var(--text-opacity))}.focus-within\:text-purple-500:focus-within{--text-opacity:1;color:#9061f9;color:rgba(144,97,249,var(--text-opacity))}.focus-within\:text-purple-600:focus-within{--text-opacity:1;color:#7e3af2;color:rgba(126,58,242,var(--text-opacity))}.hover\:text-gray-700:hover{--text-opacity:1;color:#24262d;color:rgba(36,38,45,var(--text-opacity))}.hover\:text-gray-800:hover{--text-opacity:1;color:#1a1c23;color:rgba(26,28,35,var(--text-opacity))}.active\:text-gray-500:active{--text-opacity:1;color:#707275;color:rgba(112,114,117,var(--text-opacity))}.theme-dark .dark\:text-white{--text-opacity:1;color:#fff;color:rgba(255,255,255,var(--text-opacity))}.theme-dark .dark\:text-gray-100{--text-opacity:1;color:#f4f5f7;color:rgba(244,245,247,var(--text-opacity))}.theme-dark .dark\:text-gray-200{--text-opacity:1;color:#e5e7eb;color:rgba(229,231,235,var(--text-opacity))}.theme-dark .dark\:text-gray-300{--text-opacity:1;color:#d5d6d7;color:rgba(213,214,215,var(--text-opacity))}.theme-dark .dark\:text-gray-400{--text-opacity:1;color:#9e9e9e;color:rgba(158,158,158,var(--text-opacity))}.theme-dark .dark\:text-red-100{--text-opacity:1;color:#fde8e8;color:rgba(253,232,232,var(--text-opacity))}.theme-dark .dark\:text-red-400{--text-opacity:1;color:#f98080;color:rgba(249,128,128,var(--text-opacity))}.theme-dark .dark\:text-orange-100{--text-opacity:1;color:#feecdc;color:rgba(254,236,220,var(--text-opacity))}.theme-dark .dark\:text-green-100{--text-opacity:1;color:#def7ec;color:rgba(222,247,236,var(--text-opacity))}.theme-dark .dark\:text-green-400{--text-opacity:1;color:#31c48d;color:rgba(49,196,141,var(--text-opacity))}.theme-dark .dark\:text-teal-100{--text-opacity:1;color:#d5f5f6;color:rgba(213,245,246,var(--text-opacity))}.theme-dark .dark\:text-blue-100{--text-opacity:1;color:#e1effe;color:rgba(225,239,254,var(--text-opacity))}.theme-dark .dark\:text-purple-300{--text-opacity:1;color:#cabffd;color:rgba(202,191,253,var(--text-opacity))}.theme-dark .dark\:text-purple-400{--text-opacity:1;color:#ac94fa;color:rgba(172,148,250,var(--text-opacity))}.theme-dark .dark\:focus-within\:text-purple-400:focus-within{--text-opacity:1;color:#ac94fa;color:rgba(172,148,250,var(--text-opacity))}.theme-dark .dark\:hover\:text-gray-200:hover{--text-opacity:1;color:#e5e7eb;color:rgba(229,231,235,var(--text-opacity))}.uppercase{text-transform:uppercase}.hover\:underline:hover,.underline{text-decoration:underline}.tracking-wide{letter-spacing:.025em}.align-middle{vertical-align:middle}.whitespace-no-wrap{white-space:nowrap}.w-1{width:.25rem}.w-3{width:.75rem}.w-4{width:1rem}.w-5{width:1.25rem}.w-6{width:1.5rem}.w-8{width:2rem}.w-12{width:3rem}.w-56{width:14rem}.w-64{width:16rem}.w-full{width:100%}.z-10{z-index:10}.z-20{z-index:20}.z-30{z-index:30}.gap-6{grid-gap:1.5rem;gap:1.5rem}.col-span-2{grid-column:span 2/span 2}.col-span-3{grid-column:span 3/span 3}.col-span-4{grid-column:span 4/span 4}.transform{--transform-translate-x:0;--transform-translate-y:0;--transform-rotate:0;--transform-skew-x:0;--transform-skew-y:0;--transform-scale-x:1;--transform-scale-y:1;transform:translateX(var(--transform-translate-x)) translateY(var(--transform-translate-y)) rotate(var(--transform-rotate)) skewX(var(--transform-skew-x)) skewY(var(--transform-skew-y)) scaleX(var(--transform-scale-x)) scaleY(var(--transform-scale-y))}.translate-x-1{--transform-translate-x:0.25rem}.-translate-x-20{--transform-translate-x:-5rem}.-translate-y-1{--transform-translate-y:-0.25rem}.translate-y-1\/2{--transform-translate-y:50%}.transition-all{transition-property:all}.transition{transition-property:background-color,border-color,color,fill,stroke,opacity,box-shadow,transform}.transition-colors{transition-property:background-color,border-color,color,fill,stroke}.ease-in{transition-timing-function:cubic-bezier(.4,0,1,1)}.ease-out{transition-timing-function:cubic-bezier(0,0,.2,1)}.ease-in-out{transition-timing-function:cubic-bezier(.4,0,.2,1)}.duration-150{transition-duration:.15s}.duration-300{transition-duration:.3s}.focus\:shadow-outline-gray:focus{box-shadow:0 0 0 3px rgba(213,214,215,.45)}.focus\:shadow-outline-red:focus{box-shadow:0 0 0 3px rgba(248,180,180,.45)}.focus\:shadow-outline-green:focus{box-shadow:0 0 0 3px rgba(132,225,188,.45)}.focus\:shadow-outline-purple:focus{box-shadow:0 0 0 3px rgba(202,191,253,.45)}.theme-dark .dark\:focus\:shadow-outline-gray:focus{box-shadow:0 0 0 3px rgba(213,214,215,.45)}@media (min-width:640px){.sm\:space-y-0>:not(template)~:not(template){--space-y-reverse:0;margin-top:calc(0px*(1 - var(--space-y-reverse)));margin-bottom:calc(0px*var(--space-y-reverse))}.sm\:space-x-6>:not(template)~:not(template){--space-x-reverse:0;margin-right:calc(1.5rem*var(--space-x-reverse));margin-left:calc(1.5rem*(1 - var(--space-x-reverse)))}.sm\:rounded-lg{border-radius:.5rem}.sm\:flex-row{flex-direction:row}.sm\:items-center{align-items:center}.sm\:justify-end{justify-content:flex-end}.sm\:justify-center{justify-content:center}.sm\:m-4{margin:1rem}.sm\:mt-auto{margin-top:auto}.sm\:max-w-xl{max-width:36rem}.sm\:p-12{padding:3rem}.sm\:py-2{padding-top:.5rem;padding-bottom:.5rem}.sm\:px-4{padding-left:1rem;padding-right:1rem}.sm\:w-auto{width:auto}.sm\:grid-cols-9{grid-template-columns:repeat(9,minmax(0,1fr))}}@media (min-width:768px){.md\:space-x-4>:not(template)~:not(template){--space-x-reverse:0;margin-right:calc(1rem*var(--space-x-reverse));margin-left:calc(1rem*(1 - var(--space-x-reverse)))}.md\:block{display:block}.md\:hidden{display:none}.md\:flex-row{flex-direction:row}.md\:items-end{align-items:flex-end}.md\:h-auto{height:auto}.md\:w-1\/2{width:50%}.md\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}}@media (min-width:1024px){.lg\:mr-32{margin-right:8rem}}@media (min-width:1280px){.xl\:grid-cols-4{grid-template-columns:repeat(4,minmax(0,1fr))}}
    </style>
	</head>
	<body>
		<div
      	class="flex h-screen bg-gray-50 dark:bg-gray-900"
      	:class="{ 'overflow-hidden': isSideMenuOpen }"
    	>
<!-- Desktop sidebar -->
      <aside
        class="z-20 hidden w-64 overflow-y-auto bg-white dark:bg-gray-800 md:block flex-shrink-0"
      >
        <div class="py-4 text-gray-500 dark:text-gray-400">
          <a
            class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200"
            href="#"
          >
            Simplon.co
          </a>
          <ul class="mt-6">
            <li class="relative px-6 py-3">
              <span
                class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
                aria-hidden="true"
              ></span>
              <a
                class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100"
                href="index.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                  ></path>
                </svg>
                <span class="ml-4">Dashboard</span>
              </a>
            </li>
          </ul>
          <ul>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="forms.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"
                  ></path>
                </svg>
                <span class="ml-4">Forms</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="cards.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"
                  ></path>
                </svg>
                <span class="ml-4">Cards</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="charts.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"
                  ></path>
                  <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                </svg>
                <span class="ml-4">Charts</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="buttons.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"
                  ></path>
                </svg>
                <span class="ml-4">Buttons</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="modals.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"
                  ></path>
                </svg>
                <span class="ml-4">Modals</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="tables.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path d="M4 6h16M4 10h16M4 14h16M4 18h16"></path>
                </svg>
                <span class="ml-4">Tables</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <button
                class="inline-flex items-center justify-between w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                @click="togglePagesMenu"
                aria-haspopup="true"
              >
                <span class="inline-flex items-center">
                  <svg
                    class="w-5 h-5"
                    aria-hidden="true"
                    fill="none"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z"
                    ></path>
                  </svg>
                  <span class="ml-4">Pages</span>
                </span>
                <svg
                  class="w-4 h-4"
                  aria-hidden="true"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                >
                  <path
                    fill-rule="evenodd"
                    d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                    clip-rule="evenodd"
                  ></path>
                </svg>
              </button>
              <template x-if="isPagesMenuOpen">
                <ul
                  x-transition:enter="transition-all ease-in-out duration-300"
                  x-transition:enter-start="opacity-25 max-h-0"
                  x-transition:enter-end="opacity-100 max-h-xl"
                  x-transition:leave="transition-all ease-in-out duration-300"
                  x-transition:leave-start="opacity-100 max-h-xl"
                  x-transition:leave-end="opacity-0 max-h-0"
                  class="p-2 mt-2 space-y-2 overflow-hidden text-sm font-medium text-gray-500 rounded-md shadow-inner bg-gray-50 dark:text-gray-400 dark:bg-gray-900"
                  aria-label="submenu"
                >
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/login.html">Login</a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/create-account.html">
                      Add Employee
                    </a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/forgot-password.html">
                      Forgot password
                    </a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/404.html">404</a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/blank.html">Blank</a>
                  </li>
                </ul>
              </template>
            </li>
          </ul>
          <div class="px-6 my-6">
            <a href="new"
              class="flex items-center justify-between w-full px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
            >
              Add Employee
              <span class="ml-2" aria-hidden="true">+</span>
            </a>
          </div>
        </div>
      </aside>
      
      
      <aside
        class="fixed inset-y-0 z-20 flex-shrink-0 w-64 mt-16 overflow-y-auto bg-white dark:bg-gray-800 md:hidden"
        x-show="isSideMenuOpen"
        x-transition:enter="transition ease-in-out duration-150"
        x-transition:enter-start="opacity-0 transform -translate-x-20"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition ease-in-out duration-150"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0 transform -translate-x-20"
        @click.away="closeSideMenu"
        @keydown.escape="closeSideMenu"
      >


        <div class="py-4 text-gray-500 dark:text-gray-400">
          <a
            class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200"
            href="#"
          >
            Windmill
          </a>
          <ul class="mt-6">
            <li class="relative px-6 py-3">
              <span
                class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
                aria-hidden="true"
              ></span>
              <a
                class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100"
                href="index.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  viewBox="0 0 24 24"
                  stroke-width="2"
                  stroke="currentColor"
                >
                  <path
                    d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                  ></path>
                </svg>
                <span class="ml-4">Dashboard</span>
              </a>
            </li>
          </ul>
          <ul>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="forms.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"
                  ></path>
                </svg>
                <span class="ml-4">Forms</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="cards.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"
                  ></path>
                </svg>
                <span class="ml-4">Cards</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="charts.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"
                  ></path>
                  <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                </svg>
                <span class="ml-4">Charts</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="buttons.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"
                  ></path>
                </svg>
                <span class="ml-4">Buttons</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="modals.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"
                  ></path>
                </svg>
                <span class="ml-4">Modals</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="tables.html"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path d="M4 6h16M4 10h16M4 14h16M4 18h16"></path>
                </svg>
                <span class="ml-4">Tables</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <button
                class="inline-flex items-center justify-between w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                @click="togglePagesMenu"
                aria-haspopup="true"
              >
                <span class="inline-flex items-center">
                  <svg
                    class="w-5 h-5"
                    aria-hidden="true"
                    fill="none"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z"
                    ></path>
                  </svg>
                  <span class="ml-4">Pages</span>
                </span>
                <svg
                  class="w-4 h-4"
                  aria-hidden="true"
                  fill="currentColor"
                  viewBox="0 0 20 20"
                >
                  <path
                    fill-rule="evenodd"
                    d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                    clip-rule="evenodd"
                  ></path>
                </svg>
              </button>
              <template x-if="isPagesMenuOpen">
                <ul
                  x-transition:enter="transition-all ease-in-out duration-300"
                  x-transition:enter-start="opacity-25 max-h-0"
                  x-transition:enter-end="opacity-100 max-h-xl"
                  x-transition:leave="transition-all ease-in-out duration-300"
                  x-transition:leave-start="opacity-100 max-h-xl"
                  x-transition:leave-end="opacity-0 max-h-0"
                  class="p-2 mt-2 space-y-2 overflow-hidden text-sm font-medium text-gray-500 rounded-md shadow-inner bg-gray-50 dark:text-gray-400 dark:bg-gray-900"
                  aria-label="submenu"
                >
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/login.html">Login</a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/create-account.html">
                      Create account
                    </a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/forgot-password.html">
                      Forgot password
                    </a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/404.html">404</a>
                  </li>
                  <li
                    class="px-2 py-1 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                  >
                    <a class="w-full" href="pages/blank.html">Blank</a>
                  </li>
                </ul>
              </template>
            </li>
          </ul>
          <div class="px-6 my-6">
            <button
              class="flex items-center justify-between px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
            >
              Create account
              <span class="ml-2" aria-hidden="true">+</span>
            </button>
          </div>
        </div>
      </aside>
      
      <div class="flex flex-col flex-1 w-full">
        <header class="z-10 py-4 bg-white shadow-md dark:bg-gray-800">
          <div
            class="container flex items-center justify-between h-full px-6 mx-auto text-purple-600 dark:text-purple-300"
          >
          
            <!-- Mobile hamburger -->
            <button
              class="p-1 mr-5 -ml-1 rounded-md md:hidden focus:outline-none focus:shadow-outline-purple"
              @click="toggleSideMenu"
              aria-label="Menu"
            >
              <svg
                class="w-6 h-6"
                aria-hidden="true"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </button>
            <!-- Search input -->
            <div class="flex justify-center flex-1 lg:mr-32">
              <div
                class="relative w-full max-w-xl mr-6 focus-within:text-purple-500"
              >
                <div class="absolute inset-y-0 flex items-center pl-2">
                  <svg
                    class="w-4 h-4"
                    aria-hidden="true"
                    fill="currentColor"
                    viewBox="0 0 20 20"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                      clip-rule="evenodd"
                    ></path>
                  </svg>
                </div>
                <input
                  class="w-full pl-8 pr-2 text-sm text-gray-700 placeholder-gray-600 bg-gray-100 border-0 rounded-md dark:placeholder-gray-500 dark:focus:shadow-outline-gray dark:focus:placeholder-gray-600 dark:bg-gray-700 dark:text-gray-200 focus:placeholder-gray-500 focus:bg-white focus:border-purple-300 focus:outline-none focus:shadow-outline-purple form-input"
                  type="text"
                  placeholder="Search for Employee by ID"
                  aria-label="Search"
                />
              </div>
            </div>
            <ul class="flex items-center flex-shrink-0 space-x-6">
              <!-- Theme toggler -->
              <li class="flex">
                <button
                  class="rounded-md focus:outline-none focus:shadow-outline-purple"
                  @click="toggleTheme"
                  aria-label="Toggle color mode"
                >
                  <template x-if="!dark">
                    <svg
                      class="w-5 h-5"
                      aria-hidden="true"
                      fill="currentColor"
                      viewBox="0 0 20 20"
                    >
                      <path
                        d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z"
                      ></path>
                    </svg>
                  </template>
                  <template x-if="dark">
                    <svg
                      class="w-5 h-5"
                      aria-hidden="true"
                      fill="currentColor"
                      viewBox="0 0 20 20"
                    >
                      <path
                        fill-rule="evenodd"
                        d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
                        clip-rule="evenodd"
                      ></path>
                    </svg>
                  </template>
                </button>
              </li>
              <!-- Notifications menu -->
              <li class="relative">
                <button
                  class="relative align-middle rounded-md focus:outline-none focus:shadow-outline-purple"
                  @click="toggleNotificationsMenu"
                  @keydown.escape="closeNotificationsMenu"
                  aria-label="Notifications"
                  aria-haspopup="true"
                >
                  <svg
                    class="w-5 h-5"
                    aria-hidden="true"
                    fill="currentColor"
                    viewBox="0 0 20 20"
                  >
                    <path
                      d="M10 2a6 6 0 00-6 6v3.586l-.707.707A1 1 0 004 14h12a1 1 0 00.707-1.707L16 11.586V8a6 6 0 00-6-6zM10 18a3 3 0 01-3-3h6a3 3 0 01-3 3z"
                    ></path>
                  </svg>
                  <!-- Notification badge -->
                  <span
                    aria-hidden="true"
                    class="absolute top-0 right-0 inline-block w-3 h-3 transform translate-x-1 -translate-y-1 bg-red-600 border-2 border-white rounded-full dark:border-gray-800"
                  ></span>
                </button>
                <template x-if="isNotificationsMenuOpen">
                  <ul
                    x-transition:leave="transition ease-in duration-150"
                    x-transition:leave-start="opacity-100"
                    x-transition:leave-end="opacity-0"
                    @click.away="closeNotificationsMenu"
                    @keydown.escape="closeNotificationsMenu"
                    class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:text-gray-300 dark:border-gray-700 dark:bg-gray-700"
                  >
                    <li class="flex">
                      <a
                        class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <span>Messages</span>
                        <span
                          class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-red-600 bg-red-100 rounded-full dark:text-red-100 dark:bg-red-600"
                        >
                          13
                        </span>
                      </a>
                    </li>
                    <li class="flex">
                      <a
                        class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <span>Sales</span>
                        <span
                          class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-red-600 bg-red-100 rounded-full dark:text-red-100 dark:bg-red-600"
                        >
                          2
                        </span>
                      </a>
                    </li>
                    <li class="flex">
                      <a
                        class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <span>Alerts</span>
                      </a>
                    </li>
                  </ul>
                </template>
              </li>
              <!-- Profile menu -->
              <li class="relative">
                <button
                  class="align-middle rounded-full focus:shadow-outline-purple focus:outline-none"
                  @click="toggleProfileMenu"
                  @keydown.escape="closeProfileMenu"
                  aria-label="Account"
                  aria-haspopup="true"
                >
                  <img
                    class="object-cover w-8 h-8 rounded-full"
                    src="https://images.unsplash.com/photo-1502378735452-bc7d86632805?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=aa3a807e1bbdfd4364d1f449eaa96d82"
                    alt=""
                    aria-hidden="true"
                  />
                </button>
                <template x-if="isProfileMenuOpen">
                  <ul
                    x-transition:leave="transition ease-in duration-150"
                    x-transition:leave-start="opacity-100"
                    x-transition:leave-end="opacity-0"
                    @click.away="closeProfileMenu"
                    @keydown.escape="closeProfileMenu"
                    class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:border-gray-700 dark:text-gray-300 dark:bg-gray-700"
                    aria-label="submenu"
                  >
                    <li class="flex">
                      <a
                        class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <svg
                          class="w-4 h-4 mr-3"
                          aria-hidden="true"
                          fill="none"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
                        >
                          <path
                            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                          ></path>
                        </svg>
                        <span>Profile</span>
                      </a>
                    </li>
                    <li class="flex">
                      <a
                        class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <svg
                          class="w-4 h-4 mr-3"
                          aria-hidden="true"
                          fill="none"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
                        >
                          <path
                            d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"
                          ></path>
                          <path d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                        </svg>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li class="flex">
                      <a
                        class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <svg
                          class="w-4 h-4 mr-3"
                          aria-hidden="true"
                          fill="none"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
                        >
                          <path
                            d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1"
                          ></path>
                        </svg>
                        <span>Log out</span>
                      </a>
                    </li>
                  </ul>
                </template>
              </li>
            </ul>
          </div>
        </header>
        
        <main class="h-full overflow-y-auto">
          <div class="container px-6 mx-auto grid">
            <h2
              class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200"
            >
              Add Employee
            </h2>
            <div class="w-full overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">
                  
                        

                          
      				 <div align="center">
  <c:if test="${employee != null}">
   <form action="update" method="post">
        </c:if>
        <c:if test="${employee == null}">
   <form action="insert" method="post" >
        </c:if>
          
        <table border="1" cellpadding="5" id="customers">
          <c:if test="${employee != null}">
           <input type="hidden" name="id_employees" id="custome" value="${employee.getId_employee()}" />
          </c:if>            
            <tr>
                <th>Employee FirstName: </th>
                <td>
                 <input type="text" name="firstname" size="75" id="custome"
                   value="${employee.getFirstname()}"
                  />
                </td>
            </tr>
            <tr>
                <th>Employee LastName: </th>
                <td>
                 <input type="text" name="lastname" size="75" id="custome"
                   value="${employee.getLastname()}"/>
                </td>
            </tr>
            <tr>
                <th>Employee Email: </th>
                <td>
                 <input type="text" name="email" size="75" id="custome"
                   value="${employee.getEmail()}"
                 />
                </td>
            </tr>
            <tr>
                <th>Employee Adress: </th>
                <td>
                 <input type="text" name="adress" size="75" id="custome"
                   value="${employee.getAdress()}"
                 />
                </td>
            </tr>
            
                <th>Contact: </th>
                <td>
                 <input type="text" name="contact" size="75" id="custome"
                   value="${employee.getContact()}"
                 />
                </td>
            </tr>
            <tr>
             <td colspan="2" >
              <input type="submit" value="Save" id="Save"/>
             </td>
            </tr>
        </table>
        </form>
    </div> 



        <script>
          /**
 * Limit focus to focusable elements inside `element`
 * @param {HTMLElement} element - DOM element to focus trap inside
 * @return {Function} cleanup function
 */
 
function focusTrap(element) {
  const focusableElements = getFocusableElements(element)
  const firstFocusableEl = focusableElements[0]
  const lastFocusableEl = focusableElements[focusableElements.length - 1]

  // Wait for the case the element was not yet rendered
  setTimeout(() => firstFocusableEl.focus(), 50)

  /**
   * Get all focusable elements inside `element`
   * @param {HTMLElement} element - DOM element to focus trap inside
   * @return {HTMLElement[]} List of focusable elements
   */
  function getFocusableElements(element = document) {
    return [
      ...element.querySelectorAll(
        'a, button, details, input, select, textarea, [tabindex]:not([tabindex="-1"])'
      ),
    ].filter((e) => !e.hasAttribute('disabled'))
  }

  function handleKeyDown(e) {
    const TAB = 9
    const isTab = e.key.toLowerCase() === 'tab' || e.keyCode === TAB

    if (!isTab) return

    if (e.shiftKey) {
      if (document.activeElement === firstFocusableEl) {
        lastFocusableEl.focus()
        e.preventDefault()
      }
    } else {
      if (document.activeElement === lastFocusableEl) {
        firstFocusableEl.focus()
        e.preventDefault()
      }
    }
  }

  element.addEventListener('keydown', handleKeyDown)

  return function cleanup() {
    element.removeEventListener('keydown', handleKeyDown)
  }
}


        </script>
        <script>
          function data() {
  function getThemeFromLocalStorage() {
    // if user already changed the theme, use it
    if (window.localStorage.getItem('dark')) {
      return JSON.parse(window.localStorage.getItem('dark'))
    }

    // else return their preferences
    return (
      !!window.matchMedia &&
      window.matchMedia('(prefers-color-scheme: dark)').matches
    )
  }

  function setThemeToLocalStorage(value) {
    window.localStorage.setItem('dark', value)
  }

  return {
    dark: getThemeFromLocalStorage(),
    toggleTheme() {
      this.dark = !this.dark
      setThemeToLocalStorage(this.dark)
    },
    isSideMenuOpen: false,
    toggleSideMenu() {
      this.isSideMenuOpen = !this.isSideMenuOpen
    },
    closeSideMenu() {
      this.isSideMenuOpen = false
    },
    isNotificationsMenuOpen: false,
    toggleNotificationsMenu() {
      this.isNotificationsMenuOpen = !this.isNotificationsMenuOpen
    },
    closeNotificationsMenu() {
      this.isNotificationsMenuOpen = false
    },
    isProfileMenuOpen: false,
    toggleProfileMenu() {
      this.isProfileMenuOpen = !this.isProfileMenuOpen
    },
    closeProfileMenu() {
      this.isProfileMenuOpen = false
    },
    isPagesMenuOpen: false,
    togglePagesMenu() {
      this.isPagesMenuOpen = !this.isPagesMenuOpen
    },
    // Modal
    isModalOpen: false,
    trapCleanup: null,
    openModal() {
      this.isModalOpen = true
      this.trapCleanup = focusTrap(document.querySelector('#modal'))
    },
    closeModal() {
      this.isModalOpen = false
      this.trapCleanup()
    },
  }
}


        </script>
</body>
</html>
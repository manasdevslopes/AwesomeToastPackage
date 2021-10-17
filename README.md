<h1>Awesome Toast</h1>

<h3>Present Apple-like toast purely in SwiftUI</h3>

<h2>🔭 Overview</h2>

<p>Awesome Toast is an open-source library in Github to use with SwiftUI. It allows you to present popups that don't need any user action to dismiss or to validate. Some great usage examples: <code>Message Sent</code>, <code>Poor Network Connection</code>, <code>Profile Updated</code>, <code>Logged In/Out</code>, <code>Favorites</code>, <code>Loading</code> and so on...</p>


<ul>
<li>Built with pure SwiftUI.</li>
<li><code>title</code>, <code>message</code> <code>isPresented</code>, <code>color</code>, <code>duration</code>, <code>duration</code>,  <code>alignment</code>,  <code>toastType</code>, and  <code>image</code>.</li>
<li>Supports Light &amp; Dark Mode.</li>
<li>Works with <strong>any</strong> kind of view builder.</li>
<li>Icon &amp; Background customization.</li>
</ul>


<h2>Navigation</h2>

<ul>
<li><a href="#-installation">Installation</a>
<ul>
<li><a href="#swift-package-manager">Swift Package Manager</a></li>
<li><a href="#manually">Manually</a></li>
</ul>
</li>
<li><a href="#-usage">Usage</a>
<ul>
<li><a href="#usage-example-with-regular-alert">Usage example with regular alert</a></li>
<li><a href="#complete-modifier-example">Complete Modifier Example</a></li>
<li><a href="#alert-toast-parameters">Alert Toast Parameters</a></li>
</ul>
</li>
<li><a href="#-article">Article</a></li>
<li><a href="#-contributing">Contributing</a></li>
<li><a href="#-author">Author</a></li>
<li><a href="#-license">License</a></li>
</ul>

<h2>💻 Installation</h2>
<h3><a id="user-content-swift-package-manager" class="anchor" aria-hidden="true" href="#swift-package-manager"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Swift Package Manager</h3>

<p>The <a href="https://swift.org/package-manager/" rel="nofollow">Swift Package Manager</a> is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.</p>

<p>To integrate <code>AwesomeToast</code> into your Xcode project using Xcode 12, specify it in <code>File &gt; Swift Packages &gt; Add Package Dependency...</code>:</p>
<p>To integrate <code>AwesomeToast</code> into your Xcode project using Xcode 13, specify it in <code>File &gt; Add Packages</code>:</p>

<div class="snippet-clipboard-content position-relative overflow-auto"><pre lang="ogdl"><code>https://github.com/manasdevslopes/AwesomeToastPackage.git</code></pre><div class="zeroclipboard-container position-absolute right-0 top-0">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn js-clipboard-copy m-2 p-0 tooltipped-no-delay" data-copy-feedback="Copied!" data-tooltip-direction="w" value="https://github.com/manasdevslopes/AwesomeToastPackage.git" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon m-2">
    <path fill-rule="evenodd" d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 010 1.5h-1.5a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 00.25-.25v-1.5a.75.75 0 011.5 0v1.5A1.75 1.75 0 019.25 16h-7.5A1.75 1.75 0 010 14.25v-7.5z"></path><path fill-rule="evenodd" d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0114.25 11h-7.5A1.75 1.75 0 015 9.25v-7.5zm1.75-.25a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 00.25-.25v-7.5a.25.25 0 00-.25-.25h-7.5z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-text-success d-none m-2">
    <path fill-rule="evenodd" d="M13.78 4.22a.75.75 0 010 1.06l-7.25 7.25a.75.75 0 01-1.06 0L2.22 9.28a.75.75 0 011.06-1.06L6 10.94l6.72-6.72a.75.75 0 011.06 0z"></path>
</svg>
    </clipboard-copy>
  </div></div>
  
<hr>

<h3><a id="user-content-manually" class="anchor" aria-hidden="true" href="#manually"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Manually</h3>

<p>If you prefer not to use any of dependency managers, you can integrate <code>AwesomeToast</code> into your project manually. Put <code>Sources/AwesomeToast</code> folder in your Xcode project. Make sure to enable <code>Copy items if needed</code> and <code>Create groups</code>.</p>


<h2>🧳 Requirements</h2>

<ul>
<li>iOS 14.0+ | macOS 11+</li>
<li>Xcode 12.0+ | Swift 5+</li>
</ul>


<h2><a id="user-content--usage" class="anchor" aria-hidden="true" href="#-usage"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a><g-emoji class="g-emoji" alias="hammer_and_wrench" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f6e0.png">🛠</g-emoji> Usage</h2>

<p>First, add <code>import AwesomeToast</code> on every <code>swift</code> file you would like to use <code>AwesomeToast</code>.</p>
<p>Then, use the <code>.showToast</code> view modifier:</p>

<p><strong>Parameters:</strong></p>

<ul>    
<li><code>title</code>: (MUST) expects <code>String</code>.</li>
<li><code>message</code>: (MUST) expects <code>String</code>.</li>
<li><code>isPresented</code>: (MUST) assign a <code>Binding&lt;Bool&gt;</code> to show or dismiss alert.</li>
<li><code>color</code>: (MUST) expects <code>Color Type</code>.</li>
<li><code>duration</code>: (MUST) expects <code>Number</code> of seconds, Toast displayed. By default 2sec.</li>
<li><code>alignment</code>: (MUST) expects <code>An enum value of Type VerticalAlignment</code>.</li>
<li><code>toastType</code>: (MUST) expects <code>An enum value (scaleToast / offsetToast)</code>.</li>
<li><code>image</code>: (MUST) expects use <code>SF Symbols</code> App. Type of Image..</li>
</ul>


<h4><a id="user-content-usage-example-with-regular-alert" class="anchor" aria-hidden="true" href="#usage-example-with-regular-alert"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Usage example with regular awesome toast</h4>


<div class="snippet-clipboard-content position-relative overflow-auto"><pre lang="ogdl"><code>import SwiftUI
import AwesomeToast
struct ContentView: View {
    @State private var topToast: Bool = false
    var body: some View {
        Button("Top toast") {
            withAnimation {
                topToast.toggle()
                
    </code></pre><div class="zeroclipboard-container position-absolute right-0 top-0">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn js-clipboard-copy m-2 p-0 tooltipped-no-delay" data-copy-feedback="Copied!" data-tooltip-direction="w" value="" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon m-2">
    <path fill-rule="evenodd" d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 010 1.5h-1.5a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 00.25-.25v-1.5a.75.75 0 011.5 0v1.5A1.75 1.75 0 019.25 16h-7.5A1.75 1.75 0 010 14.25v-7.5z"></path><path fill-rule="evenodd" d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0114.25 11h-7.5A1.75 1.75 0 015 9.25v-7.5zm1.75-.25a.25.25 0 00-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 00.25-.25v-7.5a.25.25 0 00-.25-.25h-7.5z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-text-success d-none m-2">
    <path fill-rule="evenodd" d="M13.78 4.22a.75.75 0 010 1.06l-7.25 7.25a.75.75 0 01-1.06 0L2.22 9.28a.75.75 0 011.06-1.06L6 10.94l6.72-6.72a.75.75 0 011.06 0z"></path>
</svg>
    </clipboard-copy>
  </div></div>
  
A custom Awesome Toast for iOS 14 Apps.
